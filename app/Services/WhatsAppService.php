<?php

namespace App\Services;

use App\Models\WaToken;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class WhatsAppService
{
    public function sendMessage(string $target, string $message): bool
    {
        $tokenInfo = WaToken::find(1);

        if (!$tokenInfo) {
            Log::warning('WhatsApp Gateway: Konfigurasi tidak ditemukan di tbl_token.');
            return false;
        }

        // Clean target number
        $target = preg_replace('/[^0-9]/', '', $target);
        if (str_starts_with($target, '0')) {
            $target = '62' . substr($target, 1);
        }

        if ($target === '') {
            Log::warning('WhatsApp Gateway: Nomor tujuan kosong.');
            return false;
        }

        $gateway = $tokenInfo->wa_gateway ?? 'fonnte';

        if ($gateway === 'bablast') {
            return $this->sendViaBablast($target, $message, $tokenInfo->bablast_token);
        } else {
            return $this->sendViaFonnte($target, $message, $tokenInfo->token);
        }
    }

    private function sendViaFonnte(string $target, string $message, ?string $token): bool
    {
        if (!$token) {
            Log::warning('WA Fonnte: Token Fonnte belum dikonfigurasi.');
            return false;
        }

        try {
            $response = Http::withHeaders([
                'Authorization' => $token,
            ])->asForm()->post('https://api.fonnte.com/send', [
                'target' => $target,
                'message' => $message,
                'countryCode' => '62'
            ]);

            $resData = $response->json();
            
            if (!$response->successful() || (isset($resData['status']) && $resData['status'] === false)) {
                $reason = $resData['reason'] ?? $resData['message'] ?? 'Fonnte error atau device offline.';
                Log::warning("WA Fonnte gagal dikirim ke {$target}. Reason: {$reason}");
                return false;
            }

            return true;
        } catch (\Throwable $exception) {
            Log::error('WA Fonnte error: ' . $exception->getMessage());
            return false;
        }
    }

    private function sendViaBablast(string $target, string $message, ?string $token): bool
    {
        if (!$token) {
            Log::warning('WA Bablast: Token Bablast belum dikonfigurasi.');
            return false;
        }

        try {
            $response = Http::withHeaders([
                'Authorization' => 'Bearer ' . $token,
                'Content-Type' => 'application/json',
            ])->post('https://api.bablast.id/waba/send', [
                'phone' => $target,
                'message' => $message,
            ]);

            $resData = $response->json();

            if (!$response->successful() || (isset($resData['success']) && $resData['success'] === false)) {
                $reason = $resData['message'] ?? 'Bablast error atau device offline.';
                Log::warning("WA Bablast gagal dikirim ke {$target}. Reason: {$reason}");
                return false;
            }

            return true;
        } catch (\Throwable $exception) {
            Log::error('WA Bablast error: ' . $exception->getMessage());
            return false;
        }
    }
}
