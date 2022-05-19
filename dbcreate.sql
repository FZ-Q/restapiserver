-- Mahasiswa
CREATE TABLE tbl_mahasiswa (
  nim VARCHAR(5) PRIMARY KEY,
  nama VARCHAR(30),
  jenis_kelamin ENUM('Laki-laki', 'Perempuan'),
  agama VARCHAR(10),
  tempat_lahir VARCHAR(20),
  tanggal_lahir DATE,
  alamat TEXT
);
-- KRS
CREATE TABLE tbl_krs(
  id_krs INT(11) PRIMARY KEY,
  nim VARCHAR(5),
  id_jadwal INT(11)
);
-- Jadwal
CREATE TABLE tbl_jadwal (
  id_jadwal INT(11) PRIMARY KEY,
  kode_mk VARCHAR(5),
  kode_dosen VARCHAR(5),
  hari VARCHAR(10),
  jam VARCHAR(11)
);
-- Matkul
CREATE TABLE tbl_matakuliah(
  kode_mk VARCHAR(5) PRIMARY KEY,
  nama VARCHAR(30),
  sks VARCHAR(5),
  semester INT(10)
);
-- Dosen
CREATE TABLE tbl_dosen(
  kode_dosen VARCHAR(5) PRIMARY KEY,
  nama VARCHAR(30),
  tanggal_lahir DATE,
  alamat TEXT
);
-- FK
ALTER TABLE tbl_krs
ADD FOREIGN KEY (nim) REFERENCES tbl_mahasiswa (nim),
  ADD FOREIGN KEY (id_jadwal) REFERENCES tbl_jadwal (id_jadwal);
ALTER TABLE tbl_jadwal
ADD FOREIGN KEY (kode_mk) REFERENCES tbl_matakuliah (kode_mk),
  ADD FOREIGN KEY (kode_dosen) REFERENCES tbl_dosen (kode_dosen);