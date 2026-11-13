# Mengelola Perangkat Lunak, Proses, dan Layanan Linux

Project dokumentasi praktik untuk kompetensi **Mengelola Perangkat Lunak, Proses, dan Layanan Linux** menggunakan Debian GNU/Linux 13. Materi disusun sebagai panduan belajar siswa SMK dan lembar pencatatan praktik.

## Tujuan Project

Setelah mengikuti seluruh lab, siswa diharapkan mampu mengelola paket perangkat lunak, mengamati dan mengendalikan proses miliknya sendiri, mengelola layanan systemd dengan aman, serta membuat dan memeriksa tugas terjadwal menggunakan cron.

## Lingkungan Praktik

- Sistem operasi: Debian GNU/Linux 13.
- Disarankan menggunakan mesin virtual atau komputer praktik yang mendapat izin dari pengajar.
- Koneksi internet diperlukan untuk mengambil informasi paket dan memasang software dari repositori resmi.
- Beberapa perintah administrasi membutuhkan `sudo`. Gunakan hak tersebut hanya saat diperlukan dan ikuti arahan pengajar.
- Baca langkah dan peringatan keselamatan sebelum menjalankan perintah. Jangan menghentikan proses, layanan, atau tugas milik orang lain maupun layanan penting sistem.

## Struktur Folder

```text
Linux-Software-Process-Service-Management/
├── README.md
├── docs/
│   └── learning-outcome.md
├── labs/
│   ├── 01-software-management/
│   │   ├── README.md
│   │   └── evidence/catatan-praktik.md
│   ├── 02-process-management/
│   │   ├── README.md
│   │   └── evidence/catatan-praktik.md
│   ├── 03-service-management/
│   │   ├── README.md
│   │   └── evidence/catatan-praktik.md
│   └── 04-task-scheduling/
│       ├── README.md
│       └── evidence/catatan-praktik.md
└── scripts/
    └── system-info.sh
```

## Daftar Lab

1. [Lab 01 — Software Management](labs/01-software-management/README.md): memeriksa sistem, memperbarui indeks paket, memasang dan memeriksa paket, serta memahami penghapusan paket.
2. [Lab 02 — Process Management](labs/02-process-management/README.md): mengamati proses dan mengendalikan proses uji yang dibuat sendiri.
3. [Lab 03 — Service Management](labs/03-service-management/README.md): memeriksa dan mengelola layanan `cron` dengan `systemctl`.
4. [Lab 04 — Task Scheduling](labs/04-task-scheduling/README.md): membuat tugas cron milik user yang mencatat waktu ke file log.

Peta capaian kompetensi tersedia di [docs/learning-outcome.md](docs/learning-outcome.md). Script informasi dasar sistem ada di [scripts/system-info.sh](scripts/system-info.sh).

## Status Pengerjaan

## Status dan Ringkasan Bukti

Screenshot praktik tersedia di folder evidence setiap lab. Ringkasan berikut hanya memuat hal yang terbaca pada screenshot; detail yang tidak tampak, seperti angka PID proses uji, tidak diasumsikan.

- **Lab 01:** `tree` versi `2.2.1-1` terpasang, lalu dihapus. Sesudah penghapusan, `dpkg -s tree` menyatakan paket tidak terpasang. `apt update` mengambil indeks, tetapi menampilkan peringatan komponen `non-free-firmware` yang tidak tersedia; 110 paket ditandai dapat ditingkatkan dan tidak ditingkatkan dalam bukti.
- **Lab 02:** screenshot menampilkan tabel proses dan penghentian `sleep 600` menggunakan `kill "$PID"`. Pemeriksaan `ps` sesudahnya hanya menampilkan header. Nilai PID dan bukti pembuatan proses tidak terlihat.
- **Lab 03:** `cron` terlihat aktif dan enabled, dihentikan sementara, kemudian dimulai kembali. Status akhir aktif dan enabled. Saat `enable`, screenshot juga menampilkan peringatan `systemd-ssh-generator` terkait AF_VSOCK.
- **Lab 04:** crontab root memuat tugas setiap menit yang menambahkan hasil `date` ke `/tmp/linux-cron-practice.log`. Screenshot hasil memperlihatkan catatan dari 01:46:01 sampai 01:52:01 EST pada 13 November 2026. Penghapusan tugas setelah praktik tidak terlihat pada bukti.

Lihat penjelasan dan gambar di [Lab 01](labs/01-software-management/README.md), [Lab 02](labs/02-process-management/README.md), [Lab 03](labs/03-service-management/README.md), dan [Lab 04](labs/04-task-scheduling/README.md). Catatan perintah serta output untuk masing-masing praktik ada di folder `evidence`. Gambar yang ditampilkan adalah file screenshot yang tersedia; tidak ada gambar atau output yang dibuat-buat.
