<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WabaChat;
use App\Models\Pelanggan;
use App\Services\WhatsAppService;
use Illuminate\Support\Facades\DB;

class AdminWabaChatController extends Controller
{
    public function index(Request $request)
    {
        // Get unique contacts with their latest message
        $contacts = DB::table('tbl_waba_chat')
            ->select(
                'no_telp', 
                'nama', 
                DB::raw('MAX(created_at) as last_message_time'),
                DB::raw("SUM(CASE WHEN tipe = 'incoming' AND status = 'received' THEN 1 ELSE 0 END) as unread_count")
            )
            ->groupBy('no_telp', 'nama')
            ->orderBy('last_message_time', 'desc')
            ->get();
            
        // For each contact, we might want the latest message text
        foreach ($contacts as $contact) {
            $latestMsg = WabaChat::where('no_telp', $contact->no_telp)
                ->orderBy('created_at', 'desc')
                ->first();
            $contact->latest_pesan = $latestMsg ? $latestMsg->pesan : '';
        }

        return view('admin.waba_chat.index', compact('contacts'));
    }
    
    public function loadMessages($no_telp)
    {
        // Mark messages as read
        WabaChat::where('no_telp', $no_telp)
            ->where('tipe', 'incoming')
            ->where('status', 'received')
            ->update(['status' => 'read']);
            
        $messages = WabaChat::where('no_telp', $no_telp)
            ->orderBy('created_at', 'asc') // chronological order
            ->get();
            
        $nama = $messages->first()->nama ?? 'Tidak Dikenal';
        if ($nama === 'Tidak Dikenal') {
            $shortPhone = substr($no_telp, -9);
            $pelanggan = Pelanggan::where('no_telp', 'like', "%{$shortPhone}%")->first();
            if ($pelanggan) $nama = $pelanggan->nama_pelanggan;
        }
            
        return response()->json([
            'status' => 'success',
            'contact' => [
                'no_telp' => $no_telp,
                'nama' => $nama
            ],
            'messages' => $messages
        ]);
    }
    
    public function reply(Request $request)
    {
        $request->validate([
            'no_telp' => 'required|string',
            'pesan' => 'required|string'
        ]);
        
        $no_telp = $request->input('no_telp');
        $pesan = $request->input('pesan');
        
        // Find name if possible
        $shortPhone = substr($no_telp, -9);
        $pelanggan = Pelanggan::where('no_telp', 'like', "%{$shortPhone}%")->first();
        $nama = $pelanggan ? $pelanggan->nama_pelanggan : 'Tidak Dikenal';
        
        // Send using WA Service
        $waService = app(WhatsAppService::class);
        $response = $waService->sendMessage($no_telp, $pesan);
        
        // Save to DB
        $chat = WabaChat::create([
            'no_telp' => $no_telp,
            'nama' => $nama,
            'pesan' => $pesan,
            'tipe' => 'outgoing',
            'status' => 'sent',
        ]);
        
        return response()->json([
            'status' => 'success',
            'message' => $chat
        ]);
    }
}
