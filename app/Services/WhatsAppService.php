<?php

namespace App\Services;

use App\Models\WaToken;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class WhatsAppService
{
    public function sendMessage(string $target, string $message, ?string $mediaUrl = null): bool
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
            return $this->sendViaBablast($target, $message, $tokenInfo->bablast_token, $mediaUrl);
        } else {
            return $this->sendViaFonnte($target, $message, $tokenInfo->token, $mediaUrl);
        }
    }

    private function sendViaFonnte(string $target, string $message, ?string $token, ?string $mediaUrl = null): bool
    {
        if (!$token) {
            Log::warning('WA Fonnte: Token Fonnte belum dikonfigurasi.');
            return false;
        }

        try {
            $payload = [
                'target' => $target,
                'message' => $message,
                'countryCode' => '62'
            ];

            if ($mediaUrl) {
                $payload['url'] = $mediaUrl;
            }

            $response = Http::withHeaders([
                'Authorization' => $token,
            ])->asForm()->post('https://api.fonnte.com/send', $payload);

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

    private function sendViaBablast(string $target, string $message, ?string $token, ?string $mediaUrl = null): bool
    {
        if (!$token) {
            Log::warning('WA Bablast: Token Bablast belum dikonfigurasi.');
            return false;
        }

        try {
            $payload = [
                'phone' => $target,
                'message' => $message,
            ];
            
            if ($mediaUrl) {
                // For Bablast WABA, media is usually sent with specific types, but we'll try sending it via media_url parameter
                $payload['media_url'] = $mediaUrl;
                $payload['type'] = 'image'; // assumption for Bablast
            }

            $response = Http::withHeaders([
                'Authorization' => 'Bearer ' . $token,
                'Content-Type' => 'application/json',
            ])->post('https://api.bablast.id/waba/send', $payload);

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
