#!/bin/sh
# Menjalankan Detektif Hoax di http://localhost:8080
cd "$(dirname "$0")" || exit 1
echo ""
echo " Detektif Hoax berjalan di: http://localhost:8080"
echo " Tekan Ctrl+C untuk berhenti."
echo ""
if command -v python3 >/dev/null 2>&1; then
  exec python3 -m http.server 8080
elif command -v python >/dev/null 2>&1; then
  exec python -m http.server 8080
elif command -v npx >/dev/null 2>&1; then
  exec npx http-server -p 8080
else
  echo " Python/Node tidak ditemukan. Lihat README.md untuk opsi XAMPP/Laragon."
  exit 1
fi
