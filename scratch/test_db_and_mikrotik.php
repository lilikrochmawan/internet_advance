<?php
require __DIR__ . '/../vendor/autoload.php';
$app = require_once __DIR__ . '/../bootstrap/app.php';

$request = Illuminate\Http\Request::create('/', 'GET');
$app->instance('request', $request);

$app->make(Illuminate\Contracts\Http\Kernel::class)->bootstrap();

use Illuminate\Support\Facades\DB;

try {
    $mikrotik = DB::table('tbl_mikrotik')->first();
    if (!$mikrotik) {
        echo "No Mikrotik configured.\n";
        exit;
    }
    echo "Mikrotik config: IP=" . $mikrotik->ip . " User=" . $mikrotik->username . "\n";
    
    require_once base_path('include/routeros_api.php');
    $API = new \RouterosAPI();
    $API->timeout = 2;
    $API->attempts = 1;
    $API->delay = 0;
    
    echo "Connecting to Mikrotik...\n";
    if ($API->connect($mikrotik->ip, $mikrotik->username, $mikrotik->password)) {
        echo "Connected successfully!\n";
        $API->disconnect();
    } else {
        echo "Failed to connect to Mikrotik.\n";
    }
} catch (\Throwable $e) {
    echo "Error: " . $e->getMessage() . "\n";
}
