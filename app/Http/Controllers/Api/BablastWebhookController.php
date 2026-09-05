<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Models\Pelanggan;
use App\Models\Tagihan;
use App\Models\WabaChat;
use App\Services\WhatsAppService;

class BablastWebhookController extends Controller
{
    public function handle(Request $request)
    {
        // Tangkap seluruh payload dari Bablast
        $payload = $request->all();
        
        // Cek Event
        $event = $payload['event'] ?? null;
        
        if (in_array($event, ['messages_incoming', 'incoming_message'])) {
            return $this->handleIncomingMessage($payload);
        } elseif (in_array($event, ['messages_status', 'message_status'])) {
            return $this->handleMessageStatus($payload);
        }
        
        // Log event lain yang mungkin terjadi
        Log::info('Bablast Webhook (Other Event):', $payload);
        return response()->json(['status' => 'ignored']);
    }

    private function handleIncomingMessage(array $payload)
    {
        // Ekstrak pengirim dan pesan
        // Bablast WABA payload format
        $from = $payload['data']['from_phone'] ?? $payload['data']['from'] ?? $payload['from'] ?? $payload['phone'] ?? null;
        $messageText = $payload['data']['content'] ?? $payload['data']['message']['text']['body'] ?? $payload['data']['message'] ?? $payload['message'] ?? $payload['text'] ?? '';
        
        if (!$from) {
            Log::warning('Bablast Webhook: Pengirim tidak ditemukan', $payload);
            return response()->json(['error' => 'No sender phone']);
        }
        
        // Standarisasi nomor telepon
        $from = preg_replace('/[^0-9]/', '', $from);
        
        Log::info("Bablast Incoming dari {$from}: {$messageText}");
        
        $shortPhone = substr($from, -9);
        $pelanggan = Pelanggan::where('no_telp', 'like', "%{$shortPhone}%")->first();
        
        // Simpan ke database
        WabaChat::create([
            'no_telp' => $from,
            'nama' => $pelanggan ? $pelanggan->nama_pelanggan : 'Tidak Dikenal',
            'pesan' => $messageText,
            'tipe' => 'incoming',
            'status' => 'received',
        ]);
        
        // Deteksi Kata Kunci
        $messageUpper = strtoupper(trim($messageText));
        
        if (str_contains($messageUpper, 'CEK TAGIHAN') || str_contains($messageUpper, 'INFO TAGIHAN')) {
            $this->autoReplyTagihan($from);
        } elseif (str_contains($messageUpper, 'HALO') || str_contains($messageUpper, 'PING')) {
            $this->autoReplyHalo($from);
        }
        
        return response()->json(['status' => 'success']);
    }
    
    private function handleMessageStatus(array $payload)
    {
        // Log status pengiriman pesan (sent, delivered, read, failed)
        // Tidak perlu membalas apapun
        $status = $payload['data']['status'] ?? 'unknown';
        $messageId = $payload['data']['messageId'] ?? 'unknown';
        
        Log::info("Bablast Message Status [{$messageId}]: {$status}");
        
        return response()->json(['status' => 'success']);
    }
    
    private function autoReplyTagihan(string $from)
    {
        // Ambil 8-10 digit terakhir untuk mencari kecocokan di database 
        // Mengantisipasi format +62, 62, atau 0 di database
        $shortPhone = substr($from, -9);
        
        $pelanggan = Pelanggan::where('no_telp', 'like', "%{$shortPhone}%")->first();
        
        $waService = app(WhatsAppService::class);
        
        if (!$pelanggan) {
            $waService->sendMessage($from, "Maaf, nomor Anda tidak terdaftar dalam sistem kami. Silakan hubungi admin untuk bantuan.");
            return;
        }
        
        $tagihanBelumBayar = Tagihan::where('id_pelanggan', $pelanggan->id_pelanggan)
            ->where('status_bayar', 0)
            ->orderBy('bulan_tahun', 'asc')
            ->get();
            
        if ($tagihanBelumBayar->isEmpty()) {
            $pesan = "Halo *{$pelanggan->nama_pelanggan}*,\n\nTerima kasih, saat ini **tidak ada tagihan yang tertunggak** (Lunas). Terima kasih telah berlangganan!";
            $waService->sendMessage($from, $pesan);
            return;
        }
        
        $pesan = "Halo *{$pelanggan->nama_pelanggan}*,\nBerikut adalah informasi tagihan Anda yang belum dibayar:\n\n";
        
        $totalTunggakan = 0;
        foreach ($tagihanBelumBayar as $idx => $tgh) {
            $bulanTahun = $tgh->bulan_tahun ?? '-';
            $nominal = "Rp " . number_format($tgh->jml_bayar, 0, ',', '.');
            $pesan .= ($idx + 1) . ". Bulan: {$bulanTahun} - Tagihan: {$nominal}\n";
            $totalTunggakan += $tgh->jml_bayar;
        }
        
        $totalFormatted = "Rp " . number_format($totalTunggakan, 0, ',', '.');
        $pesan .= "\n*Total Tunggakan: {$totalFormatted}*\n\n";
        $pesan .= "Silakan lakukan pembayaran agar layanan internet tetap berjalan lancar. Terima kasih.";
        
        // Jeda sebentar agar terlihat natural
        sleep(1);
        $waService->sendMessage($from, $pesan);
    }
    
    private function autoReplyHalo(string $from)
    {
        $waService = app(WhatsAppService::class);
        $pesan = "Halo! Ini adalah sistem layanan otomatis. \nKetik *CEK TAGIHAN* untuk mengecek informasi tagihan Anda.";
        $waService->sendMessage($from, $pesan);
    }
}
