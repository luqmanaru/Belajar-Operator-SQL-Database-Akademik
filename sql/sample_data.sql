-- Data Jurusan
INSERT INTO jurusan (kode_jur, nama_jur, jenjang) VALUES 
('TI', 'Teknik Informatika', 'S1'),
('SI', 'Sistem Informasi', 'S1'),
('TK', 'Teknik Komputer', 'D3'),
('MI', 'Manajemen Informatika', 'D3');

-- Data Mahasiswa
INSERT INTO mahasiswa (nim, nama_m, tpt_lhr_m, tgl_lhr_m, j_kelamin, alm_m, kota_m, agama_m, telepon_m, kode_jur) VALUES 
('101031001', 'Dewi Nurbaini', 'Bekasi', '1987-10-12', 'Wanita', 'Jl. Dahlia I Blok BC 2/3', 'Bekasi Utara', 'Islam', '021-8791290', 'TI'),
('101031002', 'Deni Hermawan', 'Jakarta', '1985-05-15', 'Pria', 'Jl. Melati Raya No.3', 'Cikarang', 'Islam', '021-8911122', 'SI'),
('101031003', 'Rini Hapsari', 'Bogor', '1980-08-18', 'Wanita', 'Jl. Cikarang Baru No.2', 'Cikarang', 'Islam', '021-8998877', 'TI'),
('101031004', 'Ahmad Santoso', 'Surabaya', '1982-11-20', 'Pria', 'Jl. Kenanga No.5', 'Bekasi Selatan', 'Islam', '021-88112233', 'TK');

-- Data Dosen
INSERT INTO dosen (nid, nama_d, alm_d, telepon_d, kode_jur) VALUES 
('D01', 'Prof. Ahmad Sanusi', 'Jl. Pendidikan No.1', '021-88112233', 'TI'),
('D02', 'Dr. Siti Aminah', 'Jl. Cendrawasih No.45', '021-8998877', 'SI'),
('D03', 'Ir. Bambang Sudarma', 'Jl. Mawar No.12', '021-8912345', 'TK'),
('D04', 'Drs. Hendra Wijaya', 'Jl. Anggrek No.8', '021-8956789', 'MI');

-- Data Matakuliah
INSERT INTO matakuliah (kdmk, nama_mk, sks, semester) VALUES 
('MPK131201', 'Pancasila', 2, '1'),
('MKK231203', 'Matematika Diskrit I', 3, '1'),
('SIK332101', 'Basis Data', 3, '3'),
('TIK432202', 'Pemrograman Web', 4, '4'),
('MIK533303', 'Manajemen Proyek TI', 3, '5');

-- Data Nilai
INSERT INTO nilai (nim, kdmk, smt, nid, nilai_absen, nilai_tugas, nilai_uts, nilai_uas) VALUES 
('101031001', 'MPK131201', '1', 'D02', 12, 78, 89, 55),
('101031001', 'MKK231203', '1', 'D01', 15, 85, 75, 80),
('101031002', 'SIK332101', '3', 'D03', 10, 80, 70, 75),
('101031003', 'TIK432202', '4', 'D01', 18, 90, 85, 88),
('101031004', 'MIK533303', '5', 'D04', 14, 75, 65, 70),
('101031002', 'MPK131201', '1', 'D02', 13, 70, 65, 60);
