# PianoPulse - Quick launcher (PowerShell)
Write-Host "PianoPulse - starting a local server..." -ForegroundColor Cyan

$port = 8088
$path = Split-Path -Parent $MyInvocation.MyCommand.Path

try {
    # Try python first (most common)
    if (Get-Command python -ErrorAction SilentlyContinue) {
        Write-Host "Using python -m http.server on port $port" -ForegroundColor Green
        Set-Location $path
        python -m http.server $port
    } else {
        # Fallback to built-in if available (rare)
        Write-Host "Python not found. Trying to open index.html directly..." -ForegroundColor Yellow
        Start-Process "$path\index.html"
    }
} catch {
    Write-Host "Opening index.html directly..." -ForegroundColor Yellow
    Start-Process "$path\index.html"
}