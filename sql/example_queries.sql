-- 1. Range Operator (BETWEEN)
-- a. Untuk 1 tabel
SELECT nim, nama_m AS "Nama Mahasiswa", tgl_lhr_m AS "Tanggal Lahir"
FROM mahasiswa
WHERE tgl_lhr_m BETWEEN '1977-11-17' AND '1988-12-18';

-- b. Untuk join tabel
SELECT m.nama_m, mk.nama_mk, mk.sks, n.nilai_uts, n.nilai_uas
FROM nilai n
INNER JOIN mahasiswa m ON n.nim = m.nim
INNER JOIN matakuliah mk ON n.kdmk = mk.kdmk
WHERE n.nilai_uts BETWEEN 70 AND 90;

-- 2. Range Operator (NOT BETWEEN)
-- a. Untuk 1 tabel
SELECT kdmk AS "Kode Matakuliah", nama_mk AS "Matakuliah", sks
FROM matakuliah
WHERE sks NOT BETWEEN 1 AND 2;

-- b. Untuk join tabel
SELECT m.nama_m AS "Nama Mahasiswa", mk.nama_mk AS "Matakuliah", mk.sks, n.nilai_uas
FROM nilai n
INNER JOIN mahasiswa m ON n.nim = m.nim
INNER JOIN matakuliah mk ON n.kdmk = mk.kdmk
WHERE n.nilai_uas NOT BETWEEN 70 AND 90;

-- 3. List Operator (IN)
-- a. Untuk 1 tabel
SELECT nim, nama_m AS "Nama Mahasiswa", tpt_lhr_m AS "Tempat Lahir", telepon_m AS "Telepon"
FROM mahasiswa
WHERE tpt_lhr_m IN ('Bogor', 'Surabaya', 'Solo');

-- b. Untuk join tabel
SELECT m.nama_m AS "Nama Mahasiswa", j.nama_jur AS "Jurusan", j.jenjang
FROM mahasiswa m
INNER JOIN jurusan j ON m.kode_jur = j.kode_jur
WHERE j.nama_jur IN ('Sistem Informasi', 'Teknik Informatika');

-- 4. List Operator (NOT IN)
-- a. Untuk 1 tabel
SELECT nim, nama_m AS "Nama Mahasiswa", tpt_lhr_m AS "Tempat Lahir", telepon_m AS "Telepon"
FROM mahasiswa
WHERE tpt_lhr_m NOT IN ('Bekasi', 'Bogor', 'Jakarta');

-- b. Untuk join tabel
SELECT m.nama_m AS "Nama Mahasiswa", j.nama_jur AS "Jurusan"
FROM mahasiswa m
INNER JOIN jurusan j ON m.kode_jur = j.kode_jur
WHERE j.nama_jur NOT IN ('Sistem Informasi', 'Teknik Informatika', 'Management Informatika');

-- 5. String Operator Wildcard (%)
-- a. 2 huruf pertama 'De'
SELECT nim, nama_m AS "Nama Mahasiswa"
FROM mahasiswa
WHERE nama_m LIKE 'De%';

-- b. 2 huruf terakhir 'an'
SELECT nim, nama_m AS "Nama Mahasiswa"
FROM mahasiswa
WHERE nama_m LIKE '%an';

-- c. Mengandung huruf 'an'
SELECT nim, nama_m AS "Nama Mahasiswa"
FROM mahasiswa
WHERE nama_m LIKE '%an%';

-- 6. Logical Operator (OR)
SELECT nim, nama_m AS "Nama Mahasiswa", tpt_lhr_m AS "Tempat Lahir", alm_m AS "Alamat", kota_m AS "Kota"
FROM mahasiswa
WHERE tpt_lhr_m = 'Bekasi' OR kota_m = 'Cikarang';

-- 7. Logical Operator (AND)
SELECT nim, nama_m AS "Nama Mahasiswa", tpt_lhr_m AS "Tempat Lahir", j_kelamin AS "Jenis Kelamin"
FROM mahasiswa
WHERE tpt_lhr_m = 'Bekasi' AND j_kelamin = 'Wanita';
