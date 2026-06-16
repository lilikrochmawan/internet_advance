<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Keluhan</title>
    <style>
        :root {
            color-scheme: dark;
            font-family: Inter, system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
        }
        * { box-sizing: border-box; }
        body {
            margin: 0;
            min-height: 100vh;
            background: radial-gradient(circle at top, rgba(79, 70, 229, .22), transparent 25%),
                        radial-gradient(circle at right, rgba(59, 130, 246, .14), transparent 15%),
                        linear-gradient(180deg, #0b1124 0%, #090d1d 100%);
            color: #e5e7eb;
        }
        .page {
            width: min(1100px, 100%);
            margin: 0 auto;
            padding: 24px;
        }
        .topbar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            margin-bottom: 24px;
            flex-wrap: wrap;
        }
        .topbar h1 {
            margin: 0;
            font-size: 1.35rem;
        }
        .topbar-actions {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }
        .topbar a {
            color: #a5b4fc;
            text-decoration: none;
            font-weight: 600;
        }
        .topbar a.button {
            display: inline-flex;
            align-items: center;
            padding: 10px 16px;
            border-radius: 14px;
            background: linear-gradient(90deg, #6366f1, #7c3aed);
            color: #fff;
        }
        .card {
            background: rgba(15, 23, 42, .72);
            border: 1px solid rgba(148, 163, 184, .12);
            border-radius: 28px;
            padding: 24px;
            backdrop-filter: blur(16px);
            overflow: hidden;
        }
        .table-wrap {
            overflow-x: auto;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            min-width: 720px;
        }
        th, td {
            padding: 14px 16px;
            text-align: left;
            border-bottom: 1px solid rgba(148, 163, 184, .12);
            vertical-align: top;
        }
        th {
            font-size: .82rem;
            letter-spacing: .06em;
            text-transform: uppercase;
            color: #a5b4fc;
            font-weight: 700;
        }
        td {
            color: #e2e8f0;
            font-size: .95rem;
            line-height: 1.5;
        }
        .ticket {
            display: block;
            margin-top: 4px;
            color: #94a3b8;
            font-size: .82rem;
        }
        .status {
            display: inline-flex;
            align-items: center;
            padding: 6px 12px;
            border-radius: 999px;
            font-size: .82rem;
            font-weight: 700;
            text-transform: capitalize;
        }
        .status-menunggu {
            background: rgba(251, 191, 36, .15);
            color: #fde68a;
            border: 1px solid rgba(251, 191, 36, .35);
        }
        .status-proses {
            background: rgba(59, 130, 246, .15);
            color: #bfdbfe;
            border: 1px solid rgba(59, 130, 246, .35);
        }
        .status-selesai {
            background: rgba(34, 197, 94, .15);
            color: #bbf7d0;
            border: 1px solid rgba(34, 197, 94, .35);
        }
        .status-tidak-merespon {
            background: rgba(148, 163, 184, .12);
            color: #cbd5e1;
            border: 1px solid rgba(148, 163, 184, .25);
        }
        .empty {
            text-align: center;
            color: #94a3b8;
            padding: 32px 16px;
        }
        @media (max-width: 720px) {
            th, td {
                padding: 12px;
            }
        }
        @media (max-width: 600px) {
            .page {
                padding: 16px 12px;
            }
            .topbar {
                flex-direction: column;
                align-items: stretch;
                gap: 16px;
            }
            .topbar-actions {
                flex-direction: column;
                width: 100%;
            }
            .topbar-actions a {
                width: 100%;
                justify-content: center;
                text-align: center;
            }
            .card {
                padding: 16px 12px;
                border-radius: 20px;
            }
            
            /* Responsive Table (stack rows on mobile) */
            table, thead, tbody, th, td, tr {
                display: block;
            }
            thead tr {
                position: absolute;
                top: -9999px;
                left: -9999px;
            }
            tr {
                border: 1px solid rgba(148, 163, 184, .15);
                border-radius: 16px;
                padding: 12px;
                margin-bottom: 16px;
                background: rgba(255, 255, 255, 0.02);
            }
            tr:last-child {
                margin-bottom: 0;
            }
            td {
                border: none;
                border-bottom: 1px solid rgba(148, 163, 184, .08);
                position: relative;
                padding: 12px 8px 12px 48%;
                text-align: right;
                font-size: .88rem;
                min-height: 44px;
            }
            td:last-child {
                border-bottom: 0;
            }
            td::before {
                content: attr(data-label);
                position: absolute;
                left: 8px;
                top: 50%;
                transform: translateY(-50%);
                width: 42%;
                text-align: left;
                font-weight: 700;
                color: #a5b4fc;
                text-transform: uppercase;
                font-size: 0.72rem;
                letter-spacing: 0.05em;
            }
            .ticket {
                display: block;
                margin-top: 4px;
                text-align: right;
            }
            .status {
                padding: 4px 10px;
                font-size: 0.78rem;
            }
        }
    </style>
</head>
<body>
    <div class="page">
        <div class="topbar">
            <h1>Daftar Keluhan</h1>
            <div class="topbar-actions">
                <a href="{{ route('keluhan.create') }}" class="button">+ Buat Laporan</a>
                <a href="{{ route('dashboard') }}">← Kembali</a>
            </div>
        </div>

        <div class="card">
            <div class="table-wrap">
                <table>
                    <thead>
                        <tr>
                            <th>Keluhan Client</th>
                            <th>Masalah</th>
                            <th>Status Keluhan</th>
                            <th>Tanggal Selesai Keluhan</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($keluhanList as $keluhan)
                            @php
                                $statusClass = match ($keluhan->status_keluhan) {
                                    'menunggu' => 'status-menunggu',
                                    'proses' => 'status-proses',
                                    'selesai' => 'status-selesai',
                                    'tidak merespon' => 'status-tidak-merespon',
                                    default => 'status-tidak-merespon',
                                };
                                $tanggalSelesai = $keluhan->status_keluhan === 'selesai'
                                    ? \Carbon\Carbon::parse($keluhan->tanggal)->format('d/m/Y H:i')
                                    : '-';
                            @endphp
                            <tr>
                                <td data-label="Keluhan Client">
                                    {{ $keluhan->judul_keluhan }}
                                    <span class="ticket">{{ $keluhan->nomor_tiket }}</span>
                                </td>
                                <td data-label="Masalah">{{ $keluhan->masalah ?: '-' }}</td>
                                <td data-label="Status Keluhan">
                                    <span class="status {{ $statusClass }}">{{ $keluhan->status_keluhan }}</span>
                                </td>
                                <td data-label="Tanggal Selesai">{{ $tanggalSelesai }}</td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="4" class="empty">Belum ada data keluhan.</td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
