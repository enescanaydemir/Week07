
CREATE DATABASE PersonalVeMaasYonetim
    GO

USE PersonalVeMaasYonetim
    GO

-- Tabloları Oluşturma Kısmı Başlangıç --
CREATE TABLE Personel
(
    PersonelID INT PRIMARY KEY,
    Ad VARCHAR(255),
    Soyad VARCHAR(255),
    Pozisyon VARCHAR(255),
    BaslangicTarihi DATE
);
    GO

CREATE TABLE Maaslar
(
    MaasID INT PRIMARY KEY,
    PersonelID INT,
    MaasMiktari DECIMAL(10, 2),
    GuncellemeTarihi DATE,
    FOREIGN KEY (PersonelID) REFERENCES Personel(PersonelID)
);
    GO
-- Tabloları Oluşturma Kısmı Bitiş


-- Tablolara Veri Ekleme Başlangıç

INSERT INTO Personel
    (PersonelID, Ad, Soyad, Pozisyon, BaslangicTarihi)
VALUES
    (1, 'Ahmet', 'Yılmaz', 'Okul Müdürü', '2020-01-15'),
    (2, 'Mehmet', 'Öztürk', 'Öğretmen', '2021-09-01'),
    (3, 'Ayşe', 'Kara', 'Öğretmen', '2022-03-10'),
    (4, 'Emine', 'Çelik', 'Sekreter', '2019-06-23'),
    (5, 'Ali', 'Demir', 'Öğretmen', '2021-11-15')
    GO

INSERT INTO Maaslar
    (MaasID, PersonelID, MaasMiktari, GuncellemeTarihi)
VALUES
    (1, 1, 10000, '2020-01-15'),
    (2, 1, 10500, '2021-01-15'),
    (3, 2, 7000, '2021-09-01'),
    (4, 2, 7500, '2022-09-01'),
    (5, 3, 6800, '2022-03-10'),
    (6, 3, 7200, '2023-03-10')
    GO
    -- Tablolara Veri Ekleme Bitiş