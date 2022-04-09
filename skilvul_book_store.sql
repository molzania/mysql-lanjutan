mysql -u root -p;
CREATE DATABASE skilvulbookstore;
USE skilvulbookstore;
CREATE TABLE penerbit {
    id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(50) NULL,
    kota VARCHAR(50) NULL,
};
CREATE TABLE penulis {
     id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
     nama VARCHAR(50) NULL,
    kota VARCHAR(50) NULL,
};
CREATE TABLE buku {
    id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ISBN VARCHAR(50) NULL,
    judul VARCHAR(50) NULL,
    penulis VARCHAR(50) NULL,
    penerbit INT(10),
    harga INT(10),
    stock INT(10),
    FOREIGN KEY (penerbit) REFERENCES penerbit(id),
    FOREIGN KEY (penulis) REFERENCES penulis(id),
    };
SELECT buku.penerbit, penerbit.nama FROM buku INNER JOIN penerbit ON buku.id = penerbit.id;
SELECT buku.penerbit, penerbit.nama FROM buku LEFT JOIN penerbit ON buku.id = penerbit.id ORDER BY buku.penerbit;
SELECT buku.penerbit, penerbit.nama FROM buku RIGHT JOIN penerbit ON buku.id = penerbit.id ORDER BY penerbit.id;
SELECT MAX(harga) FROM buku WHERE stock < 10;
SELECT MIN(harga) FROM buku;
SELECT COUNT(harga) FROM buku WHERE harga < 100000;