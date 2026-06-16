<?php

namespace App\Services;

use App\Models\Mikrotik;
use Illuminate\Support\Facades\Log;

class MikrotikService
{
    public function getPppoeStatus(string $pppUsername, ?string $pelangganIp = null): array
    {
        $mikrotik = Mikrotik::find(1);

        if (!$mikrotik) {
            return $this->unavailableResult('Konfigurasi Mikrotik tidak ditemukan.');
        }

        if ($pppUsername === '') {
            return $this->unavailableResult('Username PPPOE tidak tersedia pada akun Anda.');
        }

        require_once base_path('/include/routeros_api.php');

        $api = new \RouterosAPI();
        $api->port = (int) ($mikrotik->port_mikrotik ?: 8728);
        $api->timeout = 5;
        $api->attempts = 2;
        $api->delay = 1;

        if (!$api->connect($mikrotik->ip, $mikrotik->username, $mikrotik->password)) {
            Log::warning('Mikrotik: gagal koneksi.', [
                'error_no' => $api->error_no,
                'error_str' => $api->error_str,
            ]);

            return $this->unavailableResult('Tidak dapat terhubung ke server jaringan.');
        }

        try {
            $secrets = $api->comm('/ppp/secret/print', [
                '?name' => $pppUsername,
            ]);

            if (empty($secrets)) {
                return $this->unavailableResult('Akun PPPOE tidak ditemukan di Mikrotik.');
            }

            $secret = $secrets[0];
            $disabled = ($secret['disabled'] ?? 'false') === 'true';
            $isIsolir = $this->isIpIsolir($api, $pelangganIp);
            $hasIsolirProfile = ($secret['profile'] ?? '') === 'pppoe-isolir';

            if ($disabled || $isIsolir || $hasIsolirProfile) {
                return [
                    'status' => 'terblokir',
                    'label' => 'Terblokir',
                    'online' => false,
                    'ppp_username' => $pppUsername,
                    'message' => $disabled
                        ? 'Layanan internet anda dinonaktifkan'
                        : 'Layanan internet sedang diblokir (isolir).',
                ];
            }

            $activeConnections = $api->comm('/ppp/active/print', [
                '?name' => $pppUsername,
            ]);
            $online = !empty($activeConnections);

            return [
                'status' => 'aktif',
                'label' => 'Aktif',
                'online' => $online,
                'ppp_username' => $pppUsername,
                'message' => $online
                    ? 'Koneksi Anda Online.'
                    : 'Layanan aktif, namun saat ini tidak terhubung.',
            ];
        } catch (\Throwable $exception) {
            Log::error('Mikrotik: ' . $exception->getMessage());

            return $this->unavailableResult('Gagal membaca status PPPOE.');
        } finally {
            if ($api->connected) {
                $api->disconnect();
            }
        }
    }

    private function isIpIsolir(\RouterosAPI $api, ?string $pelangganIp): bool
    {
        if (empty($pelangganIp)) {
            return false;
        }

        $addressLists = $api->comm('/ip/firewall/address-list/print', [
            '?comment' => 'Blokir Bulanan ' . $pelangganIp
        ]) ?: [];

        return !empty($addressLists);
    }

    private function unavailableResult(string $message): array
    {
        return [
            'status' => 'unknown',
            'label' => 'Tidak Tersedia',
            'online' => false,
            'ppp_username' => null,
            'message' => $message,
        ];
    }
}
