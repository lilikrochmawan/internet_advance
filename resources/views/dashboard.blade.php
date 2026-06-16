<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <!-- Favicon -->
    <link rel="shortcut icon" href="{{ asset('favicon.ico?v=3') }}" type="image/x-icon">
    <link rel="icon" type="image/png" href="{{ asset('favicon.png?v=3') }}">
    <style>
        :root {
            color-scheme: dark;
            color: #e5e7eb;
            font-family: Inter, system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
        }
        * {
            box-sizing: border-box;
        }
        body {
            margin: 0;
            min-height: 100vh;
            background: radial-gradient(circle at top, rgba(79, 70, 229, .22), transparent 25%),
                        radial-gradient(circle at right, rgba(59, 130, 246, .14), transparent 15%),
                        linear-gradient(180deg, #0b1124 0%, #090d1d 100%);
            color: #e5e7eb;
        }
        .page {
            width: min(1120px, 100%);
            margin: 0 auto;
            padding: 24px;
        }
        .topbar {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
            margin-bottom: 28px;
        }
        .topcard {
            min-width: 0;
            background: rgba(15, 23, 42, .72);
            border: 1px solid rgba(148, 163, 184, .12);
            border-radius: 28px;
            padding: 22px 24px;
            backdrop-filter: blur(16px);
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .topcard-left {
            min-width: 0;
        }
        .topcard-title {
            margin: 0;
            font-size: 1.05rem;
            letter-spacing: .06em;
            text-transform: uppercase;
            color: #c7d2fe;
        }
        .topcard-subtitle {
            margin: 6px 0 0;
            color: #cbd5e1;
            font-size: .92rem;
        }
        .topcard-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 8px 12px;
            border-radius: 999px;
            background: rgba(255,255,255,.08);
            border: 1px solid rgba(255,255,255,.12);
            color: #f8fafc;
            font-size: .9rem;
            font-weight: 600;
        }
        .topcard-actions {
            display: flex;
            align-items: center;
            gap: 18px;
        }
        .logout-button {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            padding: 10px 16px;
            border-radius: 14px;
            border: 1px solid rgba(255, 255, 255, 0.12);
            background: rgba(255, 255, 255, 0.06);
            color: #f8fafc;
            font-weight: 700;
            text-decoration: none;
            cursor: pointer;
        }
        .logout-button:hover {
            background: rgba(255, 255, 255, 0.12);
        }
        .topcard-icon {
            width: 38px;
            height: 38px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            background: rgba(255,255,255,.12);
            color: #e0e7ff;
            font-size: 1.1rem;
            border: none;
            cursor: pointer;
            position: relative;
            transition: background .2s ease;
        }
        .topcard-icon:hover {
            background: rgba(255,255,255,.2);
        }
        .topcard-icon--notify {
            animation: bell-swing 1.8s ease-in-out infinite;
            transform-origin: 50% 0%;
        }
        .topcard-icon--notify:hover {
            animation-play-state: paused;
        }
        @keyframes bell-swing {
            0%, 100% { transform: rotate(0deg); }
            12% { transform: rotate(14deg); }
            24% { transform: rotate(-12deg); }
            36% { transform: rotate(10deg); }
            48% { transform: rotate(-8deg); }
            60% { transform: rotate(5deg); }
            72% { transform: rotate(-3deg); }
        }
        .notif-badge {
            position: absolute;
            top: 4px;
            right: 4px;
            width: 10px;
            height: 10px;
            border-radius: 50%;
            background: #ef4444;
            border: 2px solid #0f172a;
            box-shadow: 0 0 0 2px rgba(239, 68, 68, .35);
        }
        .info-modal-overlay {
            position: fixed;
            inset: 0;
            background: rgba(2, 6, 23, .72);
            display: none;
            align-items: center;
            justify-content: center;
            padding: 20px;
            z-index: 9999;
        }
        .info-modal-overlay.is-open {
            display: flex;
        }
        .info-modal {
            width: min(520px, 100%);
            background: linear-gradient(180deg, rgba(30, 41, 59, .98), rgba(15, 23, 42, .98));
            border: 1px solid rgba(148, 163, 184, .18);
            border-radius: 20px;
            padding: 24px;
            box-shadow: 0 24px 60px rgba(0, 0, 0, .45);
        }
        .info-modal h3 {
            margin: 0 0 12px;
            font-size: 1.15rem;
            color: #e0e7ff;
        }
        .info-modal p {
            margin: 0;
            color: #cbd5e1;
            line-height: 1.6;
            white-space: pre-wrap;
        }
        .info-modal-actions {
            margin-top: 20px;
            display: flex;
            justify-content: flex-end;
        }
        .info-modal-close {
            padding: 10px 18px;
            border-radius: 12px;
            border: 1px solid rgba(255, 255, 255, .12);
            background: rgba(99, 102, 241, .25);
            color: #f8fafc;
            font-weight: 600;
            cursor: pointer;
        }
        .info-modal-close:hover {
            background: rgba(99, 102, 241, .4);
        }
        .topcard-profile {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            background: linear-gradient(135deg, #818cf8, #6366f1);
            display: grid;
            place-items: center;
            color: white;
            font-weight: 700;
        }
        .content-grid {
            display: grid;
            grid-template-columns: 1.6fr 1fr;
            gap: 24px;
            margin-bottom: 24px;
        }
        .card {
            background: rgba(15, 23, 42, .75);
            border: 1px solid rgba(148, 163, 184, .12);
            border-radius: 28px;
            padding: 28px;
            box-shadow: 0 24px 60px rgba(15, 23, 42, .24);
        }
        .card h2 {
            margin: 0 0 14px;
            font-size: 1.2rem;
            color: #eef2ff;
        }
        .card .value {
            font-size: 2rem;
            font-weight: 800;
            margin: 0;
            letter-spacing: -.03em;
            color: #f8fafc;
        }
        .card .description {
            margin: 10px 0 20px;
            color: #cbd5e1;
            line-height: 1.65;
        }
        .button-primary {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            padding: 14px 20px;
            border-radius: 16px;
            border: none;
            color: #fff;
            background: linear-gradient(90deg, #6366f1, #7c3aed);
            text-decoration: none;
            font-weight: 700;
            cursor: pointer;
        }
        .package-card {
            background: rgba(255,255,255,.06);
            border: 1px solid rgba(255,255,255,.12);
            border-radius: 26px;
            padding: 22px;
        }
        .package-card h3 {
            margin: 0;
            font-size: 1rem;
            color: #c7d2fe;
            text-transform: uppercase;
            letter-spacing: .1em;
        }
        .package-name {
            display: flex;
            align-items: center;
            gap: 12px;
            margin: 18px 0 12px;
        }
        .package-icon {
            width: 40px;
            height: 40px;
            display: grid;
            place-items: center;
            border-radius: 14px;
            background: rgba(255,255,255,.12);
            color: #a5b4fc;
            font-size: 1.1rem;
        }
        .package-name h4 {
            margin: 0;
            font-size: 1.3rem;
            color: #fff;
        }
        .package-status {
            display: flex;
            gap: 10px;
            margin-top: 16px;
            flex-wrap: wrap;
        }
        .chip {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 10px 14px;
            border-radius: 999px;
            background: rgba(255,255,255,.08);
            border: 1px solid rgba(255,255,255,.12);
            color: #e2e8f0;
            font-size: .92rem;
        }
        .progress {
            position: relative;
            background: rgba(255,255,255,.08);
            border-radius: 999px;
            height: 12px;
            overflow: hidden;
            margin-top: 20px;
        }
        .progress::after {
            content: '';
            position: absolute;
            inset: 0;
            background: linear-gradient(90deg, #818cf8, #7c3aed);
            width: 48%;
        }
        .button-row {
            display: grid;
            grid-template-columns: repeat(4, minmax(0, 1fr));
            gap: 16px;
            margin: 0 -8px;
        }
        .action-card {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            gap: 12px;
            padding: 20px;
            background: rgba(255,255,255,.06);
            border: 1px solid rgba(255,255,255,.1);
            border-radius: 22px;
            min-height: 120px;
            text-align: center;
            color: #e5e7eb;
        }
        .action-card span {
            width: 44px;
            height: 44px;
            display: grid;
            place-items: center;
            border-radius: 14px;
            background: rgba(255,255,255,.1);
            color: #c7d2fe;
            font-size: 1.3rem;
        }
        .action-card p {
            margin: 0;
            font-size: .95rem;
            color: #cbd5e1;
        }
        .recommendation {
            margin-top: 24px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 14px;
        }
        .recommendation h3 {
            margin: 0;
            font-size: 1rem;
            color: #e5e7eb;
        }
        .recommendation a {
            color: #a5b4fc;
            text-decoration: none;
            font-weight: 600;
        }
        .recommendation-list {
            margin-top: 18px;
            display: grid;
            grid-template-columns: repeat(2, minmax(0, 1fr));
            gap: 20px;
        }
        .paket-card {
            overflow: hidden;
            border-radius: 22px;
            border: 1px solid rgba(124, 58, 237, .35);
            background: #fff;
            box-shadow: 0 18px 40px rgba(15, 23, 42, .18);
        }
        .paket-card-header {
            display: grid;
            grid-template-columns: 1fr auto auto;
            align-items: center;
            gap: 16px;
            padding: 18px 20px;
            background: linear-gradient(135deg, #6d28d9 0%, #7c3aed 55%, #8b5cf6 100%);
            color: #fff;
        }
        .paket-card-title {
            margin: 0;
            font-size: 1.05rem;
            font-weight: 700;
            line-height: 1.3;
        }
        .paket-card-divider {
            width: 1px;
            height: 52px;
            background: rgba(255, 255, 255, .45);
        }
        .paket-card-speed {
            text-align: center;
            min-width: 72px;
        }
        .paket-card-speed strong {
            display: block;
            font-size: 2rem;
            line-height: 1;
            font-weight: 800;
        }
        .paket-card-speed span {
            display: block;
            margin-top: 4px;
            font-size: .95rem;
            font-weight: 600;
            opacity: .95;
        }
        .paket-card-body {
            padding: 20px 22px 18px;
            background: #fff;
        }
        .paket-feature-list {
            list-style: none;
            margin: 0;
            padding: 0;
            display: grid;
            gap: 14px;
        }
        .paket-feature-list li {
            display: flex;
            align-items: flex-start;
            gap: 12px;
            color: #334155;
            font-size: .95rem;
            line-height: 1.45;
        }
        .paket-feature-icon {
            width: 22px;
            height: 22px;
            flex: 0 0 22px;
            border-radius: 50%;
            display: grid;
            place-items: center;
            background: linear-gradient(135deg, #7c3aed, #6d28d9);
            color: #fff;
            font-size: .72rem;
            font-weight: 700;
        }
        .paket-card-footer {
            padding: 16px 22px 20px;
            border-top: 1px solid #e2e8f0;
            background: #fff;
        }
        .paket-price {
            display: flex;
            align-items: flex-end;
            gap: 4px;
            color: #7c3aed;
            font-weight: 800;
        }
        .paket-price-currency {
            font-size: 1rem;
            line-height: 1;
            margin-bottom: 6px;
        }
        .paket-price-main {
            font-size: 2.4rem;
            line-height: 1;
            letter-spacing: -.03em;
        }
        .paket-price-suffix {
            display: flex;
            flex-direction: column;
            font-size: .95rem;
            line-height: 1.15;
            margin-bottom: 2px;
        }
        .paket-card-empty {
            grid-column: 1 / -1;
            padding: 24px;
            border-radius: 22px;
            border: 1px dashed rgba(255,255,255,.2);
            color: #cbd5e1;
            text-align: center;
        }
        .alert-success {
            margin-bottom: 20px;
            padding: 14px 16px;
            border-radius: 16px;
            background: rgba(34, 197, 94, .12);
            border: 1px solid rgba(74, 222, 128, .35);
            color: #bbf7d0;
        }
        a.action-card {
            cursor: pointer;
        }
        .footer {
            margin-top: 38px;
            text-align: center;
            color: #94a3b8;
            font-size: .86rem;
        }
        @media (max-width: 900px) {
            .content-grid {
                grid-template-columns: 1fr;
            }
            .button-row {
                grid-template-columns: repeat(2, minmax(0, 1fr));
            }
            .recommendation-list {
                grid-template-columns: 1fr;
            }
        }
        @media (max-width: 620px) {
            .page {
                padding: 16px 12px;
            }
            .card {
                padding: 20px 16px;
            }
            .topcard {
                flex-direction: column;
                gap: 16px;
                text-align: center;
                padding: 20px 16px;
            }
            .topcard-left {
                width: 100%;
            }
            .topcard-actions {
                width: 100%;
                justify-content: center;
                flex-wrap: wrap;
            }
            .button-row {
                grid-template-columns: 1fr;
                gap: 12px;
            }
            .action-card {
                min-height: 100px;
                padding: 16px;
            }
            .recommendation-list {
                gap: 16px;
            }
            .paket-card-header {
                grid-template-columns: 1fr;
                text-align: center;
                gap: 8px;
            }
            .paket-card-divider {
                display: none;
            }
            .paket-card-speed {
                display: flex;
                align-items: baseline;
                justify-content: center;
                gap: 4px;
                min-width: unset;
            }
            .paket-card-speed strong {
                display: inline;
                font-size: 1.6rem;
            }
            .paket-card-speed span {
                display: inline;
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>
    <div class="page">
        <div class="topbar">
            <div class="topcard">
                <div class="topcard-left">
                    <p class="topcard-title">{{ $user->nama_user ?? 'User' }}</p>
                    <p class="topcard-subtitle">{{ $pelanggan->no_telp ?? 'N/A' }} · {{ $pelanggan->alamat ?? '-' }}</p>
                </div>
                <div class="topcard-actions">
                    <button type="button" class="topcard-icon{{ ($hasInformasi ?? false) ? ' topcard-icon--notify' : '' }}" id="btnInformasi" title="Informasi" aria-label="Buka informasi">
                        🔔
                        @if($hasInformasi ?? false)
                            <span class="notif-badge" aria-hidden="true"></span>
                        @endif
                    </button>
                    <div class="topcard-profile" title="{{ $user->nama_user }}">{{ substr($user->nama_user, 0, 1) }}</div>
                    <form method="POST" action="{{ route('logout') }}" style="margin:0;">
                        @csrf
                        <button type="submit" class="button-primary" style="background: linear-gradient(90deg, #dc2626, #991b1b);">Logout</button>
                    </form>
                </div>
            </div>
        </div>

        <div class="info-modal-overlay" id="infoModal" role="dialog" aria-modal="true" aria-labelledby="infoModalTitle">
            <div class="info-modal">
                <h3 id="infoModalTitle">{{ $informasi->judul_informasi ?? 'Informasi' }}</h3>
                <p>{{ $informasi->isi_informasi ?? 'Belum ada informasi terbaru.' }}</p>
                <div class="info-modal-actions">
                    <button type="button" class="info-modal-close" id="btnCloseInformasi">Tutup</button>
                </div>
            </div>
        </div>

        @if (session('success'))
            <div class="alert-success">{{ session('success') }}</div>
        @endif

        @php
            $formatRp = fn($amount) => 'Rp ' . number_format(max(0, $amount), 0, ',', '.');
            $parseKecepatan = function ($namaPaket) {
                preg_match_all('/(\d+)/', (string) $namaPaket, $matches);
                if (empty($matches[0])) {
                    return null;
                }
                return (int) end($matches[0]);
            };
            $formatHargaPaket = function ($harga) {
                $formatted = number_format((int) $harga, 0, ',', '.');
                $parts = explode('.', $formatted, 2);

                return [
                    'utama' => $parts[0],
                    'ribuan' => isset($parts[1]) ? '.' . $parts[1] : '',
                ];
            };
        @endphp

        <div class="content-grid">
            <div class="card">
                <div style="display: flex; align-items: center; justify-content: space-between; gap:16px; flex-wrap: wrap;">
                    <div>
                        <p style="margin: 0; font-size: .88rem; letter-spacing: .1em; color: #c7d2fe; text-transform: uppercase;">Tagihan Anda</p>
                        <h2 style="margin: 10px 0 0; font-size: 1.7rem;">{{ $formatRp($tagihanTotal) }}</h2>
                        <p class="description">Bayar tagihanmu tepat waktu agar layanan tetap aktif dan lancar.</p>
                        <p class="description" style="margin-top: 8px; font-size: .95rem;">
                            Internet: {{ $formatRp($tagihanBulanIni) }}<br>
                            Invoice Lain: {{ $formatRp($tagihanManual) }}
                            @if ($jumlahAkunGabung > 1)
                                <br><span style="color:#a5b4fc;">Tagihan digabung dari {{ $jumlahAkunGabung }} Pelanggan dengan nomor HP sama.</span>
                            @endif
                        </p>
                    </div>
                    <a href="{{ route('payment.detail') }}" class="button-primary">Bayar Tagihan</a>
                </div>
            </div>

            <div class="package-card">
                <h3>Detail Paket</h3>
                <div class="package-name">
                    <div class="package-icon">🌐</div>
                    <div>
                        <h4>Paket Internet</h4>
                        <p style="margin: 6px 0 0; color:#cbd5e1; font-size:.95rem;">
                            @if($pelanggan)
                                {{ optional($paket)->nama_paket ?? 'Paket ' . $pelanggan->paket }}
                            @else
                                N/A
                            @endif
                        </p>
                    </div>
                </div>
                <div class="progress"></div>
                <div class="package-status">
                    <div class="chip">Unlimited</div>
                    <div class="chip">-</div>
                </div>
            </div>
        </div>

        <div class="button-row">
            <a href="{{ route('keluhan.create') }}" class="action-card" style="text-decoration: none;">
                <span>📊</span>
                <p>Buat Laporan</p>
            </a>
            <a href="{{ route('network.status') }}" class="action-card" style="text-decoration: none;">
                <span>📶</span>
                <p>Status Jaringan</p>
            </a>
            <div class="action-card">
                <span>⬆️</span>
                <p>Upgrade</p>
            </div>          
            <a href="{{ route('keluhan.index') }}" class="action-card" style="text-decoration: none;">
                <span>☰</span>
                <p>Lihat Ticket</p>
            </a>
        </div>

        <div class="recommendation">
            <h3>Rekomendasi</h3>
            @if($paketRekomendasi->isNotEmpty())
                <a href="#">See all</a>
            @endif
        </div>
        <div class="recommendation-list">
            @forelse($paketRekomendasi as $index => $itemPaket)
                @php
                    $kecepatan = $parseKecepatan($itemPaket->nama_paket);
                    $hargaPaket = $formatHargaPaket($itemPaket->harga);
                @endphp
                <article class="paket-card">
                    <div class="paket-card-header">
                        <h4 class="paket-card-title">Paket {{ $itemPaket->nama_paket }}</h4>
                        <div class="paket-card-divider" aria-hidden="true"></div>
                        <div class="paket-card-speed">
                            <strong>{{ $kecepatan ?? '-' }}</strong>
                            <span>Mbps</span>
                        </div>
                    </div>
                    <div class="paket-card-body">
                        <ul class="paket-feature-list">
                            <li>
                                <span class="paket-feature-icon">✓</span>
                                <span>Kecepatan unggah hingga {{ $kecepatan ?? '-' }} Mbps</span>
                            </li>
                            <li>
                                <span class="paket-feature-icon">✓</span>
                                <span>Kecepatan unduh hingga {{ $kecepatan ?? '-' }} Mbps</span>
                            </li>
                            <li>
                                <span class="paket-feature-icon">✓</span>
                                <span>Kuota tidak terbatas</span>
                            </li>
                        </ul>
                    </div>
                    <div class="paket-card-footer">
                        <div class="paket-price">
                            <span class="paket-price-currency">Rp</span>
                            <span class="paket-price-main">{{ $hargaPaket['utama'] }}</span>
                            <span class="paket-price-suffix">
                                <span>{{ $hargaPaket['ribuan'] }}</span>
                                <span>/bulan</span>
                            </span>
                        </div>
                    </div>
                </article>
            @empty
                <div class="paket-card-empty">
                    Paket 20 Mb dan 30 Mb belum tersedia.
                </div>
            @endforelse
        </div>

        <div class="recommendation" style="margin-top: 16px; border-top: 1px solid rgba(255,255,255,.1); padding-top: 14px;">
        </div>
        <div class="footer">Powered by Indotel Lotus Computama</div>
    </div>

    <script>
        (function () {
            var btnOpen = document.getElementById('btnInformasi');
            var btnClose = document.getElementById('btnCloseInformasi');
            var modal = document.getElementById('infoModal');
            if (!btnOpen || !modal) return;

            function openModal() {
                modal.classList.add('is-open');
            }
            function closeModal() {
                modal.classList.remove('is-open');
            }

            btnOpen.addEventListener('click', openModal);
            if (btnClose) btnClose.addEventListener('click', closeModal);
            modal.addEventListener('click', function (e) {
                if (e.target === modal) closeModal();
            });
            document.addEventListener('keydown', function (e) {
                if (e.key === 'Escape') closeModal();
            });
        })();
    </script>
</body>
</html>
