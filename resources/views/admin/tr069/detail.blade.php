@extends('layouts.admin')

@section('title', 'Kelola CPE TR-069')

@section('styles')
<style>
    .btn {
        display: inline-flex;
        align-items: center;
        gap: 6px;
        padding: 8px 14px;
        border-radius: 10px;
        font-size: 0.85rem;
        font-weight: 600;
        cursor: pointer;
        transition: all 0.2s;
        border: none;
        text-decoration: none;
    }

    .btn-primary {
        background: var(--primary-gradient);
        color: white;
    }
    .btn-primary:hover {
        opacity: 0.9;
    }

    .btn-warning {
        background-color: #fff7ed;
        color: #ea580c;
        border: 1px solid #fed7aa;
    }
    .btn-warning:hover {
        background-color: #ffedd5;
    }

    .btn-danger {
        background-color: #fef2f2;
        color: #dc2626;
        border: 1px solid #fecaca;
    }
    .btn-danger:hover {
        background-color: #fee2e2;
    }

    .btn-default {
        background-color: #f1f5f9;
        color: #475569;
        border: 1px solid #e2e8f0;
    }
    .btn-default:hover {
        background-color: #e2e8f0;
    }

    .grid-panels {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
        gap: 20px;
        margin-bottom: 24px;
        margin-top: 15px;
    }

    .info-table {
        width: 100%;
        border-collapse: collapse;
    }

    .info-table th, .info-table td {
        padding: 12px 14px;
        border-bottom: 1px solid var(--border-color);
        font-size: 0.88rem;
    }

    .info-table th {
        text-align: left;
        color: var(--text-gray);
        font-weight: 600;
        width: 35%;
    }

    .info-table td {
        color: var(--text-dark);
    }

    .form-group {
        display: flex;
        flex-direction: column;
        gap: 6px;
        margin-bottom: 14px;
    }

    .form-group label {
        font-weight: 600;
        font-size: 0.85rem;
    }

    .form-control {
        border: 1px solid #cbd5e1;
        border-radius: 12px;
        padding: 8px 14px;
        font-size: 0.9rem;
        outline: none;
    }

    .badge-status {
        display: inline-block;
        padding: 2px 8px;
        border-radius: 6px;
        font-size: 0.75rem;
        font-weight: 600;
    }

    .status-success { background-color: #dcfce7; color: #15803d; }
    .status-warning { background-color: #fff7ed; color: #ea580c; }
    .status-danger { background-color: #fef2f2; color: #dc2626; }
    .status-info { background-color: #eff6ff; color: #1e40af; }
</style>
@endsection

@section('content')
<div style="margin-bottom: 15px;">
    <a href="{{ route('admin.tr069.index') }}" class="btn btn-default">
        <i class="fa-solid fa-arrow-left"></i> Kembali ke Daftar CPE
    </a>
</div>

<div class="grid-panels">
    <!-- Informasi Detail CPE -->
    <div class="card" style="margin-bottom: 0;">
        <div class="card-header">
            <div class="card-title">
                <i class="fa-solid fa-circle-info"></i>
                <span>Detail Informasi CPE</span>
            </div>
        </div>
        <table class="info-table">
            <tr>
                <th>Serial Number</th>
                <td><strong>{{ $cpe->serial_number }}</strong></td>
            </tr>
            <tr>
                <th>Produsen (OUI)</th>
                <td>{{ $cpe->manufacturer }} ({{ $cpe->oui }})</td>
            </tr>
            <tr>
                <th>Model / Product Class</th>
                <td>{{ $cpe->product_class }}</td>
            </tr>
            <tr>
                <th>IP Address</th>
                <td><code>{{ $cpe->ip_address }}</code></td>
            </tr>
            <tr>
                <th>Redaman (Rx Power)</th>
                <td>
                    @if(!empty($cpe->rx_power))
                        @php
                            $numericPower = (float) filter_var($cpe->rx_power, FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION);
                            $colorClass = 'status-success';
                            if ($numericPower < -27 || $numericPower > -8) {
                                $colorClass = 'status-danger';
                            } elseif ($numericPower < -24) {
                                $colorClass = 'status-warning';
                            }
                        @endphp
                        <span class="badge-status {{ $colorClass }}">
                            {{ $cpe->rx_power }}
                        </span>
                    @else
                        <span style="color: var(--text-gray); font-style: italic;">Tidak ada data</span>
                    @endif
                </td>
            </tr>
            <tr>
                <th>Tx Power</th>
                <td>
                    @if(!empty($cpe->tx_power))
                        @php
                            $numericTx = (float) filter_var($cpe->tx_power, FILTER_SANITIZE_NUMBER_FLOAT, FILTER_FLAG_ALLOW_FRACTION);
                            $txColorClass = 'status-success';
                            if ($numericTx < 0.5 || $numericTx > 5.0) {
                                $txColorClass = 'status-warning';
                            }
                        @endphp
                        <span class="badge-status {{ $txColorClass }}">
                            {{ $cpe->tx_power }}
                        </span>
                    @else
                        <span style="color: var(--text-gray); font-style: italic;">Tidak ada data</span>
                    @endif
                </td>
            </tr>
            <tr>
                <th>PPPoE Terhubung</th>
                <td>
                    @if(!empty($cpe->pppoe_username) || !empty($cpe->pppoe_status))
                        @if(!empty($cpe->pppoe_username))
                            <code>{{ $cpe->pppoe_username }}</code>
                        @else
                            <span style="color: var(--text-gray); font-style: italic;">(Username Kosong)</span>
                        @endif
                        
                        @if(!empty($cpe->pppoe_status))
                            @php
                                $status = strtolower($cpe->pppoe_status);
                                $statusClass = 'status-info';
                                if ($status === 'connected' || $status === 'up') {
                                    $statusClass = 'status-success';
                                } elseif ($status === 'connecting') {
                                    $statusClass = 'status-warning';
                                } elseif ($status === 'disconnected' || $status === 'down') {
                                    $statusClass = 'status-danger';
                                }
                            @endphp
                            <span class="badge-status {{ $statusClass }}" style="margin-left: 6px;">{{ $cpe->pppoe_status }}</span>
                        @endif
                    @else
                        <span style="color: var(--text-gray); font-style: italic;">Tidak ada data</span>
                    @endif
                </td>
            </tr>
            <tr>
                <th>SSID WiFi 2.4 GHz</th>
                <td>
                    @if(!empty($cpe->wifi_ssid_24))
                        <strong>{{ $cpe->wifi_ssid_24 }}</strong>
                    @else
                        <span style="color: var(--text-gray); font-style: italic;">Tidak ada data</span>
                    @endif
                </td>
            </tr>
            <tr>
                <th>SSID WiFi 5 GHz</th>
                <td>
                    @if(!empty($cpe->wifi_ssid_5))
                        <strong>{{ $cpe->wifi_ssid_5 }}</strong>
                    @else
                        <span style="color: var(--text-gray); font-style: italic;">Tidak ada data</span>
                    @endif
                </td>
            </tr>
            <tr>
                <th>Versi Software</th>
                <td>{{ $cpe->software_version }}</td>
            </tr>
            <tr>
                <th>Versi Hardware</th>
                <td>{{ $cpe->hardware_version }}</td>
            </tr>
            <tr>
                <th>Terhubung Pelanggan</th>
                <td>
                    @if($cpe->nama_pelanggan)
                        <strong>{{ $cpe->nama_pelanggan }}</strong>
                    @else
                        <span style="color:#eab308; font-weight:600;">Belum Dihubungkan</span>
                    @endif
                </td>
            </tr>
            <tr>
                <th>Last Inform</th>
                <td>{{ $cpe->last_inform }}</td>
            </tr>
            <tr>
                <th>Connection Request URL</th>
                <td><small><code style="word-break: break-all;">{{ $cpe->connection_request_url ?: '-' }}</code></small></td>
            </tr>
        </table>
        
        <div style="display:flex; gap:8px; margin-top:20px; flex-wrap:wrap;">
            <form method="POST" action="{{ route('admin.tr069.cr') }}">
                @csrf
                <input type="hidden" name="id_cpe" value="{{ $cpe->id_cpe }}">
                <button type="submit" class="btn btn-warning">
                    <i class="fa-solid fa-rotate"></i> Trigger Connection Request
                </button>
            </form>
            
            <form method="POST" action="{{ route('admin.tr069.reboot') }}" onsubmit="return confirm('Apakah Anda yakin ingin me-reboot perangkat ini?')">
                @csrf
                <input type="hidden" name="id_cpe" value="{{ $cpe->id_cpe }}">
                <button type="submit" class="btn btn-danger">
                    <i class="fa-solid fa-power-off"></i> Reboot ONT (Queue)
                </button>
            </form>
        </div>
    </div>

    <!-- Konfigurasi Parameter CPE -->
    <div class="card" style="margin-bottom: 0;">
        <div class="card-header">
            <div class="card-title">
                <i class="fa-solid fa-sliders"></i>
                <span>Konfigurasi Parameter (Queue)</span>
            </div>
        </div>
        <form method="POST" action="{{ route('admin.tr069.parameters') }}">
            @csrf
            <input type="hidden" name="id_cpe" value="{{ $cpe->id_cpe }}">
            
            <div class="form-group">
                <label for="param_type">Pilih Model Parameter</label>
                <select name="param_type" id="param_type" class="form-control">
                    <option value="tr098">TR-098 Model (Huawei, ZTE lama, Fiberhome)</option>
                    <option value="tr181">TR-181 Model (ONT / Router Baru)</option>
                    <option value="custom">Custom Parameter Path</option>
                </select>
            </div>

            <!-- Panel TR-098 -->
            <div id="panel_tr098" class="param-panel">
                <div style="font-weight: 700; font-size: 0.9rem; margin-bottom: 12px; color: var(--text-dark); border-bottom: 1px solid var(--border-color); padding-bottom: 4px;">WiFi Settings</div>
                <div class="form-group">
                    <label for="tr098_ssid">SSID WiFi Name</label>
                    <input type="text" name="tr098_ssid" id="tr098_ssid" class="form-control" placeholder="Nama WiFi Baru">
                </div>
                <div class="form-group">
                    <label for="tr098_password">WiFi Password</label>
                    <input type="text" name="tr098_password" id="tr098_password" class="form-control" placeholder="Password WiFi Baru">
                </div>

                <div style="font-weight: 700; font-size: 0.9rem; margin-top: 18px; margin-bottom: 12px; color: var(--text-dark); border-bottom: 1px solid var(--border-color); padding-bottom: 4px;">PPPoE Connection Settings</div>
                <div class="form-group">
                    <label for="tr098_pppoe_username">PPPoE Username</label>
                    <input type="text" name="tr098_pppoe_username" id="tr098_pppoe_username" class="form-control" placeholder="Username PPPoE Baru">
                </div>
                <div class="form-group">
                    <label for="tr098_pppoe_password">PPPoE Password</label>
                    <input type="text" name="tr098_pppoe_password" id="tr098_pppoe_password" class="form-control" placeholder="Password PPPoE Baru">
                </div>

                <div style="font-weight: 700; font-size: 0.9rem; margin-top: 18px; margin-bottom: 12px; color: var(--text-dark); border-bottom: 1px solid var(--border-color); padding-bottom: 4px;">ONT Web Admin Settings</div>
                <div class="form-group">
                    <label for="tr098_admin_password">ONT Login Admin Password</label>
                    <input type="text" name="tr098_admin_password" id="tr098_admin_password" class="form-control" placeholder="Password Admin Web GUI Baru">
                </div>
            </div>

            <!-- Panel TR-181 -->
            <div id="panel_tr181" class="param-panel" style="display:none;">
                <div style="font-weight: 700; font-size: 0.9rem; margin-bottom: 12px; color: var(--text-dark); border-bottom: 1px solid var(--border-color); padding-bottom: 4px;">WiFi Settings</div>
                <div class="form-group">
                    <label for="tr181_ssid">SSID WiFi Name</label>
                    <input type="text" name="tr181_ssid" id="tr181_ssid" class="form-control" placeholder="Nama WiFi Baru (TR-181)">
                </div>
                <div class="form-group">
                    <label for="tr181_password">WiFi Password</label>
                    <input type="text" name="tr181_password" id="tr181_password" class="form-control" placeholder="Password WiFi Baru (TR-181)">
                </div>

                <div style="font-weight: 700; font-size: 0.9rem; margin-top: 18px; margin-bottom: 12px; color: var(--text-dark); border-bottom: 1px solid var(--border-color); padding-bottom: 4px;">PPPoE Connection Settings</div>
                <div class="form-group">
                    <label for="tr181_pppoe_username">PPPoE Username</label>
                    <input type="text" name="tr181_pppoe_username" id="tr181_pppoe_username" class="form-control" placeholder="Username PPPoE Baru (TR-181)">
                </div>
                <div class="form-group">
                    <label for="tr181_pppoe_password">PPPoE Password</label>
                    <input type="text" name="tr181_pppoe_password" id="tr181_pppoe_password" class="form-control" placeholder="Password PPPoE Baru (TR-181)">
                </div>

                <div style="font-weight: 700; font-size: 0.9rem; margin-top: 18px; margin-bottom: 12px; color: var(--text-dark); border-bottom: 1px solid var(--border-color); padding-bottom: 4px;">ONT Web Admin Settings</div>
                <div class="form-group">
                    <label for="tr181_admin_password">ONT Login Admin Password</label>
                    <input type="text" name="tr181_admin_password" id="tr181_admin_password" class="form-control" placeholder="Password Admin Web GUI Baru (TR-181)">
                </div>
            </div>

            <!-- Panel Custom -->
            <div id="panel_custom" class="param-panel" style="display:none;">
                <div class="form-group">
                    <label for="custom_path">Parameter Path</label>
                    <input type="text" name="custom_path" id="custom_path" class="form-control" placeholder="Device.WiFi.SSID.1.SSID">
                </div>
                <div class="form-group">
                    <label for="custom_value">Parameter Value</label>
                    <input type="text" name="custom_value" id="custom_value" class="form-control" placeholder="Value">
                </div>
            </div>

            <button type="submit" class="btn btn-primary" style="margin-top: 10px; width: 100%; justify-content: center;">
                <i class="fa-solid fa-paper-plane"></i> Kirim Perintah ke Antrean
            </button>
        </form>
    </div>
</div>

<!-- Perangkat Terhubung -->
<div class="card" style="margin-bottom: 24px;">
    <div class="card-header">
        <div class="card-title">
            <i class="fa-solid fa-laptop text-primary"></i>
            <span>Device Terhubung (LAN/WiFi)</span>
        </div>
    </div>
    <div style="overflow-x: auto; margin-top: 10px;">
        <table class="info-table" style="width: 100%;">
            <thead>
                <tr>
                    <th style="width: 60px; background-color: #f8fafc;">No</th>
                    <th style="background-color: #f8fafc;">Nama Perangkat (Hostname)</th>
                    <th style="background-color: #f8fafc;">IP Address</th>
                    <th style="background-color: #f8fafc;">MAC Address</th>
                    <th style="background-color: #f8fafc;">Tipe Koneksi (Interface)</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $devices = json_decode($cpe->connected_devices, true) ?: [];
                @endphp
                @forelse($devices as $index => $dev)
                    <tr>
                        <td>{{ $index + 1 }}</td>
                        <td><strong>{{ $dev['hostname'] ?? '-' }}</strong></td>
                        <td><code>{{ $dev['ip_address'] ?? '-' }}</code></td>
                        <td><code>{{ $dev['mac_address'] ?? '-' }}</code></td>
                        <td>
                            @php
                                $type = strtolower($dev['interface_type'] ?? '');
                                $badgeClass = 'status-info';
                                if (strpos($type, 'wifi') !== false || strpos($type, '802.11') !== false || strpos($type, 'wlan') !== false) {
                                    $badgeClass = 'status-success';
                                } elseif (strpos($type, 'ethernet') !== false || strpos($type, 'lan') !== false) {
                                    $badgeClass = 'status-info';
                                }
                            @endphp
                            <span class="badge-status {{ $badgeClass }}">{{ $dev['interface_type'] ?? '-' }}</span>
                        </td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="5" style="text-align: center; color: var(--text-gray); padding: 20px;">
                            Tidak ada device yang terhubung atau data belum diambil.
                        </td>
                    </tr>
                @endforelse
            </tbody>
        </table>
    </div>
</div>

<!-- Riwayat Antrean Perintah -->
<div class="card">
    <div class="card-header" style="margin-bottom: 10px; flex-wrap: wrap; gap: 12px;">
        <div class="card-title">
            <i class="fa-solid fa-clock-rotate-left"></i>
            <span>Riwayat & Antrean Perintah</span>
        </div>
        <div style="display:flex; align-items:center; gap:12px; flex-wrap:wrap;">
            <div style="display: flex; align-items: center; gap: 8px;">
                <span style="font-size: 0.8rem; font-weight: 600; color: var(--text-gray);">Tampilkan:</span>
                <select id="queueLimit" class="form-control" style="padding: 4px 8px; height: 34px; border-radius: 8px; font-size: 0.8rem; width: auto; margin: 0; outline: none;">
                    <option value="10" selected>10 Baris</option>
                    <option value="25">25 Baris</option>
                    <option value="50">50 Baris</option>
                </select>
            </div>
            <div style="position:relative; min-width:180px;">
                <input type="text" id="queueSearch" class="form-control" placeholder="Cari perintah..." style="padding: 6px 12px; height:34px; border-radius:8px; width:100%; font-size: 0.8rem;">
            </div>
        </div>
    </div>
    <div style="overflow-x: auto; margin-top: 10px;">
        <table class="info-table" id="queueTable" style="width: 100%;">
            <thead>
                <tr>
                    <th style="width: 60px; background-color: #f8fafc;">No</th>
                    <th style="background-color: #f8fafc;">Jenis Perintah</th>
                    <th style="background-color: #f8fafc;">Detail Data Parameter</th>
                    <th style="background-color: #f8fafc;">Status</th>
                    <th style="background-color: #f8fafc;">Dibuat Pada</th>
                    <th style="background-color: #f8fafc;">Dieksekusi Pada</th>
                </tr>
            </thead>
            <tbody>
                @forelse($queue as $index => $row)
                    <tr>
                        <td>{{ $index + 1 }}</td>
                        <td><strong>{{ $row->command_type }}</strong></td>
                        <td><code>{{ $row->command_data }}</code></td>
                        <td>
                            @if($row->status === 'success')
                                <span class="badge-status status-success">Sukses</span>
                            @elseif($row->status === 'sent')
                                <span class="badge-status status-warning">Terkirim (Menunggu Response)</span>
                            @elseif($row->status === 'failed')
                                <span class="badge-status status-danger">Gagal</span>
                            @else
                                <span class="badge-status status-info">Antrean (Pending)</span>
                            @endif
                        </td>
                        <td>{{ $row->created_at }}</td>
                        <td>{{ $row->updated_at ?: '-' }}</td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="6" style="text-align: center; color: var(--text-gray); padding: 20px;">
                            Tidak ada riwayat perintah untuk perangkat ini.
                        </td>
                    </tr>
                @endforelse
            </tbody>
        </table>
    </div>
    <div id="queuePagination"></div>
</div>
@endsection

@section('scripts')
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const paramType = document.getElementById("param_type");
        const panels = document.querySelectorAll(".param-panel");

        paramType.addEventListener("change", function () {
            const selectedVal = this.value;
            panels.forEach(p => {
                p.style.display = "none";
            });
            document.getElementById("panel_" + selectedVal).style.display = "block";
        });

        // Initialize table pagination for command queue history
        setupTablePagination("#queueTable", "#queuePagination", "#queueLimit", "#queueSearch");
    });
</script>
@endsection
