============================================================
DATABASE SETUP SCRIPT - JAVAPERSISTENCE
============================================================

1. (Opsional) Hapus database lama
------------------------------------------------------------
DROP DATABASE IF EXISTS latihan;


2. Buat database
------------------------------------------------------------
CREATE DATABASE IF NOT EXISTS latihan;


3. Gunakan database
------------------------------------------------------------
USE latihan;


4. Hapus tabel lama (biar fresh)
------------------------------------------------------------
DROP TABLE IF EXISTS karyawan;


5. Buat tabel (SUDAH FIX)
------------------------------------------------------------
CREATE TABLE karyawan (
    nip VARCHAR(10) PRIMARY KEY COMMENT 'Nomor Induk Pegawai',
    nm_kar VARCHAR(100) NOT NULL COMMENT 'Nama Karyawan',
    tem_lhr VARCHAR(50) NOT NULL COMMENT 'Tempat Lahir',
    tgl_lhr DATE NOT NULL COMMENT 'Tanggal Lahir',
    jabatan VARCHAR(50) NOT NULL COMMENT 'Jabatan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


6. Insert data
------------------------------------------------------------
INSERT INTO karyawan VALUES
('K001', 'Nei', 'Tokyo', '2006-07-31', 'Data Scientist'),
('K002', 'Rein', 'Seoul', '2005-07-20', 'Quality Assurance'),
('K003', 'Tos', 'Bogor', '2002-12-10', 'Web Developer');


7. Cek struktur tabel
------------------------------------------------------------
DESCRIBE karyawan;


8. Lihat isi data
------------------------------------------------------------
SELECT * FROM karyawan;


9. Hitung jumlah data
------------------------------------------------------------
SELECT COUNT(*) AS total_records FROM karyawan;


============================================================
CATATAN PENTING
============================================================
- Format DATE wajib: 'YYYY-MM-DD'
- Jangan pakai ';;' cukup ';'
- Selalu jalankan: USE latihan; sebelum query