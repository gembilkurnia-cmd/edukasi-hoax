@echo off
chcp 65001 >nul
title Detektif Hoax - Server Lokal
cd /d "%~dp0"
echo.
echo  Detektif Hoax berjalan di: http://localhost:8080
echo  Tekan Ctrl+C untuk berhenti.
echo.
start "" http://localhost:8080
where py >nul 2>nul && (py -m http.server 8080 & goto :eof)
where python >nul 2>nul && (python -m http.server 8080 & goto :eof)
echo  Python tidak ditemukan. Pasang dari https://www.python.org/downloads/
echo  atau gunakan XAMPP / Laragon (lihat README.md).
pause
