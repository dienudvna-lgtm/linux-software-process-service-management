# Capaian Pembelajaran

Dokumen ini memetakan kemampuan yang dilatih dalam project. Capaian dianggap selesai setelah siswa melakukan praktik pada Debian GNU/Linux 13, mencatat perintah dan output yang benar-benar diperoleh, lalu menjelaskan hasilnya kepada pengajar.

## Capaian Umum

Siswa mampu menggunakan perintah Linux secara terarah untuk mengelola software, proses, layanan sistem, dan tugas terjadwal dengan memperhatikan keselamatan serta hak akses.

## Capaian per Lab

| Lab | Capaian yang diharapkan | Bukti belajar |
| --- | --- | --- |
| [01 — Software Management](../labs/01-software-management/README.md) | Memeriksa informasi Debian; menjelaskan `apt update`, `apt install`, `apt remove`, dan `dpkg -l`; memasang dan memeriksa paket dari repositori resmi. | Catatan perintah, output, dan refleksi pada lembar [praktik](../labs/01-software-management/evidence/catatan-praktik.md). |
| [02 — Process Management](../labs/02-process-management/README.md) | Mengamati proses dengan `ps aux` dan `top`, mengenali PID, serta mengirim sinyal hanya kepada proses uji yang dibuat sendiri. | Catatan proses uji, PID, perintah, output, dan refleksi pada lembar [praktik](../labs/02-process-management/evidence/catatan-praktik.md). |
| [03 — Service Management](../labs/03-service-management/README.md) | Memeriksa status layanan dengan `systemctl`, melakukan perubahan terarah pada `cron`, dan memverifikasi status sesudahnya. | Catatan status sebelum dan sesudah perubahan pada lembar [praktik](../labs/03-service-management/evidence/catatan-praktik.md). |
| [04 — Task Scheduling](../labs/04-task-scheduling/README.md) | Membaca format jadwal cron, mengelola crontab milik sendiri, dan memeriksa catatan waktu hasil tugas terjadwal. | Catatan jadwal, perintah, output, isi log yang benar-benar diperoleh, dan refleksi pada lembar [praktik](../labs/04-task-scheduling/evidence/catatan-praktik.md). |

## Sikap Kerja dan Keselamatan

- Memastikan nama paket, proses, layanan, dan file tujuan sebelum menjalankan perintah.
- Menggunakan `sudo` hanya untuk tindakan yang memerlukannya.
- Tidak menghentikan layanan penting sistem atau layanan yang menopang koneksi aktif.
- Tidak mengirim sinyal ke proses yang bukan dibuat sendiri untuk latihan.
- Tidak menghapus crontab atau file milik pengguna lain.
- Membedakan contoh perintah dari bukti praktik aktual.

## Kriteria Penyelesaian

Setiap lab dapat dijelaskan dengan kata-kata sendiri, langkah praktik dijalankan pada lingkungan yang sesuai, hasil aktual dicatat tanpa diubah, dan refleksi menyebutkan hal yang dipahami serta kendala yang ditemui. Jika perintah gagal atau hasil berbeda dari harapan, catat apa adanya dan diskusikan penyebabnya dengan pengajar.
