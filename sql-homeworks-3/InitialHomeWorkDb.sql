CREATE DATABASE OgrenciKulupYonetim
    GO

USE OgrenciKulupYonetim
    GO

-- Tabloları Oluşturma Kısmı Başlangıç --
CREATE TABLE Kulüpler
(
    KulupID INT PRIMARY KEY,
    KulupAdi VARCHAR(255),
    KurulusYili INT
);
    GO

CREATE TABLE OgrenciKulup
(
    OgrenciID INT,
    KulupID INT,
    Rol VARCHAR(50),
    KatilimTarihi DATE,
    PRIMARY KEY (OgrenciID, KulupID),
    FOREIGN KEY (KulupID) REFERENCES Kulüpler(KulupID)
);
    GO
-- Tabloları Oluşturma Kısmı Bitiş

-- Tablolara Veri Ekleme Başlangıç

INSERT INTO Kulüpler
    (KulupID, KulupAdi, KurulusYili)
VALUES
    (1, 'Tiyatro Kulübü', 2005),
    (2, 'Müzik Kulübü', 2010),
    (3, 'Spor Kulübü', 2012),
    (4, 'Satranç Kulübü', 2008),
    (5, 'Fotoğrafçılık Kulübü', 2015)
    GO

INSERT INTO OgrenciKulup
    (OgrenciID, KulupID, Rol, KatilimTarihi)
VALUES
    (1, 1, 'Başkan', '2023-09-01'),
    (2, 1, 'Üye', '2023-09-05'),
    (3, 1, 'Sekreter', '2023-09-07'),
    (4, 2, 'Başkan', '2022-10-12'),
    (5, 2, 'Üye', '2022-10-15'),
    (6, 2, 'Üye', '2023-01-20'),
    (7, 3, 'Başkan', '2021-04-10'),
    (8, 3, 'Üye', '2021-04-15'),
    (9, 3, 'Sekreter', '2021-05-01'),
    (10, 4, 'Başkan', '2020-03-10'),
    (11, 4, 'Üye', '2020-03-20'),
    (12, 4, 'Sekreter', '2020-04-05'),
    (13, 5, 'Başkan', '2021-06-12'),
    (14, 5, 'Üye', '2021-06-18'),
    (15, 5, 'Sekreter', '2021-07-01')
    GO
-- Tablolara Veri Ekleme Bitiş