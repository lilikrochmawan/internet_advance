@extends('layouts.admin')

@section('title', 'Chat WABA Webhook')

@section('styles')
<style>
    .chat-app {
        display: flex;
        height: 75vh;
        background: #fff;
        border-radius: 12px;
        box-shadow: 0 4px 15px rgba(0,0,0,0.05);
        overflow: hidden;
        border: 1px solid #e5e7eb;
    }
    
    /* Left Panel: Contact List */
    .chat-sidebar {
        width: 320px;
        border-right: 1px solid #e5e7eb;
        display: flex;
        flex-direction: column;
        background: #f9fafb;
    }
    .sidebar-header {
        padding: 16px;
        background: #fff;
        border-bottom: 1px solid #e5e7eb;
        font-weight: 600;
        color: #374151;
        display: flex;
        align-items: center;
        gap: 10px;
    }
    .contact-list {
        flex: 1;
        overflow-y: auto;
    }
    .contact-item {
        padding: 16px;
        border-bottom: 1px solid #e5e7eb;
        cursor: pointer;
        transition: background 0.2s;
    }
    .contact-item:hover, .contact-item.active {
        background: #f3f4f6;
    }
    .contact-item.active {
        border-left: 4px solid var(--primary-color);
        padding-left: 12px;
    }
    .contact-name {
        font-weight: 600;
        color: #1f2937;
        margin-bottom: 4px;
        display: flex;
        justify-content: space-between;
    }
    .contact-time {
        font-size: 0.75rem;
        color: #9ca3af;
        font-weight: normal;
    }
    .contact-msg {
        font-size: 0.85rem;
        color: #6b7280;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }
    
    /* Right Panel: Chat Room */
    .chat-main {
        flex: 1;
        display: flex;
        flex-direction: column;
        background: #efeae2; /* WA web background color */
        background-image: url('https://web.whatsapp.com/img/bg-chat-tile-light_04fcacde539c58cca6745483d4858c52.png');
    }
    .chat-header {
        padding: 16px 24px;
        background: #fff;
        border-bottom: 1px solid #e5e7eb;
        display: flex;
        align-items: center;
        gap: 12px;
        height: 65px;
    }
    .chat-header-name {
        font-weight: 600;
        font-size: 1.1rem;
        color: #1f2937;
    }
    .chat-header-phone {
        font-size: 0.85rem;
        color: #6b7280;
    }
    
    .chat-messages {
        flex: 1;
        padding: 24px;
        overflow-y: auto;
        display: flex;
        flex-direction: column;
        gap: 12px;
    }
    .message-bubble {
        max-width: 75%;
        padding: 8px 12px;
        border-radius: 8px;
        font-size: 0.95rem;
        line-height: 1.4;
        position: relative;
        box-shadow: 0 1px 2px rgba(0,0,0,0.1);
        word-wrap: break-word;
        white-space: pre-wrap;
    }
    .msg-incoming {
        align-self: flex-start;
        background: #fff;
        border-top-left-radius: 0;
    }
    .msg-outgoing {
        align-self: flex-end;
        background: #d9fdd3;
        border-top-right-radius: 0;
    }
    .msg-time {
        font-size: 0.7rem;
        color: #6b7280;
        text-align: right;
        margin-top: 4px;
        display: block;
    }
    
    .chat-input-area {
        padding: 16px 24px;
        background: #f0f2f5;
        display: flex;
        gap: 12px;
        align-items: flex-end;
    }
    .chat-textarea {
        flex: 1;
        border: none;
        border-radius: 8px;
        padding: 12px 16px;
        resize: none;
        outline: none;
        font-family: inherit;
        font-size: 0.95rem;
        background: #fff;
        box-shadow: 0 1px 2px rgba(0,0,0,0.05);
        max-height: 120px;
        overflow-y: auto;
    }
    .btn-send {
        background: var(--primary-color);
        color: #fff;
        border: none;
        border-radius: 50%;
        width: 45px;
        height: 45px;
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        transition: transform 0.2s;
        flex-shrink: 0;
    }
    .btn-send:hover {
        transform: scale(1.05);
    }
    .btn-send:disabled {
        background: #9ca3af;
        cursor: not-allowed;
        transform: none;
    }
    
    .no-chat-selected {
        flex: 1;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        background: #f9fafb;
        color: #6b7280;
    }
</style>
@endsection

@section('content')
<div class="content-header" style="margin-bottom: 16px;">
    <div class="header-left">
        <h1 class="page-title"><i class="fa-brands fa-whatsapp"></i> Chat WABA Webhook</h1>
    </div>
</div>

<div class="chat-app">
    <!-- Left Sidebar: Contacts -->
    <div class="chat-sidebar">
        <div class="sidebar-header">
            <i class="fa-solid fa-address-book"></i> Daftar Pesan
        </div>
        <div class="contact-list">
            @forelse($contacts as $contact)
                <div class="contact-item" onclick="loadChat('{{ $contact->no_telp }}')" id="contact-{{ $contact->no_telp }}">
                    <div class="contact-name">
                        {{ $contact->nama ?? 'Tidak Dikenal' }}
                        <span class="contact-time">{{ \Carbon\Carbon::parse($contact->last_message_time)->format('H:i') }}</span>
                    </div>
                    <div class="contact-msg">{{ $contact->latest_pesan }}</div>
                </div>
            @empty
                <div style="padding: 20px; text-align: center; color: #9ca3af; font-size: 0.9rem;">
                    Belum ada riwayat pesan WABA masuk.
                </div>
            @endforelse
        </div>
    </div>
    
    <!-- Right Main: Chat Area -->
    <div class="chat-main" id="chat-pane" style="display: none;">
        <div class="chat-header">
            <i class="fa-solid fa-circle-user" style="font-size: 2rem; color: #9ca3af;"></i>
            <div>
                <div class="chat-header-name" id="active-chat-name">Nama Pelanggan</div>
                <div class="chat-header-phone" id="active-chat-phone">Nomor Telepon</div>
            </div>
        </div>
        
        <div class="chat-messages" id="chat-messages">
            <!-- Messages loaded via AJAX -->
        </div>
        
        <div class="chat-input-area">
            <textarea id="chat-input" class="chat-textarea" rows="1" placeholder="Ketik pesan balasan... (Tekan Enter untuk mengirim, Shift+Enter untuk baris baru)"></textarea>
            <button id="btn-send-reply" class="btn-send" onclick="sendReply()">
                <i class="fa-solid fa-paper-plane"></i>
            </button>
        </div>
    </div>
    
    <!-- Placeholder when no chat selected -->
    <div class="no-chat-selected" id="no-chat-placeholder">
        <i class="fa-brands fa-whatsapp" style="font-size: 5rem; color: #d1d5db; margin-bottom: 20px;"></i>
        <h3 style="margin-bottom: 10px; color: #374151;">Pilih pesan untuk mulai membalas</h3>
        <p>Sistem ini terhubung langsung dengan Webhook Bablast.</p>
    </div>
</div>

<input type="hidden" id="current_no_telp" value="">
@csrf
@endsection

@section('scripts')
<script>
    function formatDate(dateString) {
        const date = new Date(dateString);
        return date.toLocaleTimeString('id-ID', { hour: '2-digit', minute: '2-digit' });
    }

    function scrollToBottom() {
        const messagesDiv = document.getElementById('chat-messages');
        messagesDiv.scrollTop = messagesDiv.scrollHeight;
    }

    function appendMessage(msg) {
        const isIncoming = msg.tipe === 'incoming';
        const bubbleClass = isIncoming ? 'msg-incoming' : 'msg-outgoing';
        
        const bubble = document.createElement('div');
        bubble.className = `message-bubble ${bubbleClass}`;
        bubble.innerHTML = `${msg.pesan} <span class="msg-time">${formatDate(msg.created_at)}</span>`;
        
        document.getElementById('chat-messages').appendChild(bubble);
    }

    function loadChat(no_telp) {
        // Highlight active contact
        document.querySelectorAll('.contact-item').forEach(el => el.classList.remove('active'));
        document.getElementById('contact-' + no_telp).classList.add('active');
        
        document.getElementById('no-chat-placeholder').style.display = 'none';
        document.getElementById('chat-pane').style.display = 'flex';
        document.getElementById('current_no_telp').value = no_telp;
        document.getElementById('chat-messages').innerHTML = '<div style="text-align:center; padding: 20px; color:#6b7280;">Memuat riwayat...</div>';
        
        fetch(`{{ url('/admin/waba-chat/load') }}/${no_telp}`)
            .then(res => res.json())
            .then(data => {
                if (data.status === 'success') {
                    document.getElementById('active-chat-name').innerText = data.contact.nama;
                    document.getElementById('active-chat-phone').innerText = '+' + data.contact.no_telp;
                    
                    document.getElementById('chat-messages').innerHTML = '';
                    data.messages.forEach(msg => {
                        appendMessage(msg);
                    });
                    
                    scrollToBottom();
                }
            })
            .catch(err => {
                document.getElementById('chat-messages').innerHTML = '<div style="text-align:center; padding: 20px; color:red;">Gagal memuat riwayat chat.</div>';
            });
    }

    function sendReply() {
        const input = document.getElementById('chat-input');
        const pesan = input.value.trim();
        const no_telp = document.getElementById('current_no_telp').value;
        const csrfToken = document.querySelector('input[name="_token"]').value;
        const btnSend = document.getElementById('btn-send-reply');
        
        if (!pesan || !no_telp) return;
        
        // Disable input while sending
        input.disabled = true;
        btnSend.disabled = true;
        
        fetch(`{{ route('admin.waba_chat.reply') }}`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'X-CSRF-TOKEN': csrfToken
            },
            body: JSON.stringify({ no_telp, pesan })
        })
        .then(res => res.json())
        .then(data => {
            if (data.status === 'success') {
                input.value = '';
                appendMessage(data.message);
                scrollToBottom();
                
                // Update side list
                const sideListMsg = document.querySelector(`#contact-${no_telp} .contact-msg`);
                if (sideListMsg) sideListMsg.innerText = pesan;
            } else {
                alert('Gagal mengirim pesan.');
            }
        })
        .catch(err => {
            console.error(err);
            alert('Terjadi kesalahan jaringan.');
        })
        .finally(() => {
            input.disabled = false;
            btnSend.disabled = false;
            input.focus();
        });
    }
    
    // Handle Enter key in textarea
    document.getElementById('chat-input').addEventListener('keydown', function(e) {
        if (e.key === 'Enter' && !e.shiftKey) {
            e.preventDefault();
            sendReply();
        }
    });
</script>
@endsection
