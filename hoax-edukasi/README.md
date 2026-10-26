# Detektif Hoax — Media Pembelajaran Interaktif

Situs statis (HTML + CSS + JavaScript) tanpa framework dan tanpa internet. Cukup disajikan oleh web server apa pun.

## Struktur folder

```
hoax-edukasi/
├── index.html      halaman utama
├── css/style.css   tampilan
├── js/data.js      seluruh materi (jenis hoax, kasus, soal) — edit di sini
├── js/app.js       logika interaktif
├── jalankan.bat    penjalan server lokal (Windows)
├── jalankan.sh     penjalan server lokal (Linux / macOS)
└── README.md
```

## Cara menjalankan di localhost

### 1. Cara tercepat (butuh Python)
- **Windows:** klik dua kali `jalankan.bat`
- **Linux / macOS:** buka terminal di folder ini, lalu `sh jalankan.sh`

Lalu buka **http://localhost:8080** di browser. Tekan `Ctrl + C` untuk berhenti.

### 2. XAMPP
1. Salin folder `hoax-edukasi` ke `C:\xampp\htdocs\`
2. Jalankan **Apache** dari XAMPP Control Panel
3. Buka **http://localhost/hoax-edukasi/**

### 3. Laragon
1. Salin folder ke `C:\laragon\www\`
2. Start All, lalu buka **http://hoax-edukasi.test** atau **http://localhost/hoax-edukasi/**

### 4. VS Code
Pasang ekstensi **Live Server**, klik kanan `index.html`, pilih **Open with Live Server**.

### 5. Node.js
```
npx http-server -p 8080
```

### 6. Tanpa server
Membuka `index.html` langsung (klik dua kali) juga bisa. Semua file memakai jalur relatif.

## Mengubah materi

Semua teks materi ada di `js/data.js`:
- `JENIS_HOAX` — 10 jenis hoax beserta contoh, ciri, dan cara cek
- `BEDAH` — pesan dan tanda bahaya pada bab Bedah Pesan
- `LANGKAH_JEDA` dan `ALAT_CEK` — langkah dan daftar alat cek fakta
- `KASUS_DETEKTIF` — kasus permainan (`jawaban`: `"hoax"` atau `"bukan"`)
- `SOAL_KUIS` — soal pilihan ganda (`benar` = nomor opsi yang benar, dimulai dari 0)
- `ATURAN_PINDAI` — aturan dan bobot pemindai ciri hoax

Setelah diedit, muat ulang halaman (`Ctrl + F5`).

## Catatan
- Rekor skor dan pilihan tema disimpan di browser (localStorage).
- Semua contoh pesan, tokoh, dan lembaga bersifat fiktif untuk keperluan edukasi.
