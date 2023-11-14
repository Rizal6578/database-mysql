-- Tabel Kategori
CREATE TABLE Kategori (
    Kategori_ID INT PRIMARY KEY,
    Nama_Kategori VARCHAR(255) NOT NULL
);

-- Tabel User
CREATE TABLE User (
    User_ID INT PRIMARY KEY,
    Nama_User VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    -- Tambahkan kolom lain sesuai kebutuhan
);

-- Tabel Produk
CREATE TABLE Produk (
    Produk_ID INT PRIMARY KEY,
    Nama_Produk VARCHAR(255) NOT NULL,
    Harga DECIMAL(10,2) NOT NULL,
    Kategori_ID INT,
    User_ID INT,
    FOREIGN KEY (Kategori_ID) REFERENCES Kategori(Kategori_ID),
    FOREIGN KEY (User_ID) REFERENCES User(User_ID)
    -- Tambahkan kolom lain sesuai kebutuhan
);
