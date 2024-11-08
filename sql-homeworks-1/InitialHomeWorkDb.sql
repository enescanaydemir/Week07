    CREATE DATABASE KutuphaneYonetim
    GO

    USE KutuphaneYonetim
    GO

    -- Tabloları Oluşturma Kısmı Başlangıç --
    CREATE TABLE Kitaplar
    (
        KitapID INT PRIMARY KEY IDENTITY(1,1),
        KitapAdi NVARCHAR(50) NOT NULL,
        Yazar NVARCHAR(50) NOT NULL,
        YayinYili INT,
        SayfaSayisi INT,
        ISBN NVARCHAR(59)
    )
    GO

    CREATE TABLE Dergiler
    (
        DergiID INT PRIMARY KEY IDENTITY(1,1),
        DergiAdi NVARCHAR(100) NOT NULL,
        Yayinci NVARCHAR(50) NOT NULL,
        YayinTarihi DATE NULL,
        Sayi INT
    )
    GO

    CREATE TABLE DVDler 
    (
        DVDID INT PRIMARY KEY IDENTITY(1,1),
        DVDAdi NVARCHAR(50) NOT NULL,
        Yönetmen NVARCHAR(50) NOT NULL,
        YayinYili INT,
        Süre INT
    )
    GO

    CREATE TABLE Ogrenciler
    (
        OgrenciID INT PRIMARY KEY IDENTITY(1,1),
        Ad NVARCHAR(50) NOT NULL,
        Soyad NVARCHAR(50) NOT NULL,
        DogumTarihi DATE
    )
    GO

    CREATE TABLE OduncAlmalar
    (
        OgrenciID INT NOT NULL,
        KitapID INT  NULL,
        DergiID INT NULL,
        DVDID INT NULL,
        OduncTarihi DATE NOT NULL,
        FOREIGN KEY (OgrenciID) REFERENCES Ogrenciler(OgrenciID),
        FOREIGN KEY (KitapID) REFERENCES Kitaplar(KitapID),
        FOREIGN KEY (DergiID) REFERENCES Dergiler(DergiID),
        FOREIGN KEY (DVDID) REFERENCES DVDler(DVDID)
    )
    GO

    -- Tabloları Oluşturma Kısmı Bitiş


    -- Tablolara Veri Ekleme Başlangıç

    INSERT INTO Kitaplar
        (KitapAdi, Yazar, YayinYili, SayfaSayisi, ISBN)
    VALUES
        ('Türkçülüğün Esasları', 'Ziya Gökalp', 1923, 200, '1234567890123'),
        ('Türk Tarihinin Ana Hatları', 'Mustafa Kemal Atatürk', 1930, 500, '9876543210987'),
        ('Türk Tarih ve Kültüründen Notlar', 'Zeki Velidi Togan', 1940, 300, '1234567890124'),
        ('Bozkurtların Ölümü', 'Hüseyin Nihal Atsız', 1946, 350, '1234567890125'),
        ('Bozkurtlar Diriliyor', 'Hüseyin Nihal Atsız', 1950, 320, '1234567890126'),
        ('Türk Milletinin Tarihi', 'Halil İnalcık', 1975, 400, '2345678901234'),
        ('Türklerin Tarihi', 'İlber Ortaylı', 2005, 600, '3456789012345'),
        ('Tarih Boyunca Türkçülük', 'Hüseyin Nihal Atsız', 1970, 270, '4567890123456'),
        ('Milli Mücadele Tarihi', 'Yılmaz Öztuna', 1960, 420, '5678901234567'),
        ('Türk Tarihi', 'Mehmet Fuat Köprülü', 1945, 300, '6789012345678'),
        ('Türk Dili ve Edebiyatı Üzerine', 'Ali Emiri Efendi', 1910, 180, '7890123456789'),
        ('Türkçülük ve Türk Milliyetçiliği', 'Sadri Maksudi Arsal', 1926, 250, '8901234567890'),
        ('Türklerin Tarihi ve Kültürü', 'Osman Turan', 1985, 290, '9012345678901'),
        ('Türklerde Devlet Anlayışı', 'İbrahim Kafesoğlu', 1978, 310, '0123456789012'),
        ('Bilimsel Araştırma Teknikleri', 'Şerif Mardin', 1998, 230, '1123456789013'),
        ('Edebiyat ve Toplum', 'Berna Moran', 2003, 190, '1223456789014'),
        ('Sosyolojiye Giriş', 'Zygmunt Bauman', 2010, 320, '1323456789015'),
        ('Sanatın Kısa Tarihi', 'Erwin Panofsky', 2015, 360, '1423456789016'),
        ('Felsefenin Temelleri', 'Bertrand Russell', 1950, 280, '1523456789017'),
        ('Yapay Zekanın Kısa Tarihi', 'Nick Bostrom', 2017, 290, '1623456789018')
    GO

    INSERT INTO Dergiler
        (DergiAdi, Yayinci, YayinTarihi, Sayi)
    VALUES
        ('Türk Tarih Dergisi', 'Türk Tarih Kurumu', '2022-03-01', 45),
        ('Edebiyat ve Sanat', 'Mavi Yayınları', '2021-07-15', 32),
        ('Sosyoloji ve Toplum', 'Akademik Yayıncılık', '2020-11-30', 18),
        ('Teknoloji ve Gelecek', 'TeknoBilim Yayıncılık', '2023-01-20', 12),
        ('Ekonomi ve Strateji', 'Stratejik Yayınlar', '2022-05-10', 25)
    GO

    INSERT INTO DVDler
        (DVDAdi, Yönetmen, YayinYili, Süre)
    VALUES
        ('Hababam Sınıfı', 'Ertem Eğilmez', 1975, 90),
        ('Eşkıya', 'Yavuz Turgul', 1996, 128),
        ('Vizontele', 'Yılmaz Erdoğan', 2001, 110),
        ('Kış Uykusu', 'Nuri Bilge Ceylan', 2014, 196),
        ('Ayla', 'Can Ulkay', 2017, 125)
    GO

    INSERT INTO Ogrenciler (Ad, Soyad, DogumTarihi)
    VALUES
    ('Ali', 'Yılmaz', '2000-05-15'),
    ('Ayşe', 'Kaya', '1999-08-10'),
    ('Mehmet', 'Çelik', '2001-02-25'),
    ('Fatma', 'Demir', '2002-11-30')


    INSERT INTO OduncAlmalar
        (OgrenciID, KitapID, DergiID, DVDID, OduncTarihi)
    VALUES
        (1, 3, NULL, NULL, '2024-01-10'),
        (2, NULL, 1, NULL, '2024-01-11'),
        (3, NULL, NULL, 2, '2024-01-12'),
        (4, 5, NULL, NULL, '2024-01-13'),
        (1, NULL, 2, NULL, '2024-01-14'),
        (2, NULL, NULL, 3, '2024-01-15'),
        (3, 7, NULL, NULL, '2024-01-16'),
        (4, NULL, 3, NULL, '2024-01-17'),
        (1, NULL, NULL, 5, '2024-01-18'),  
        (2, 9, NULL, NULL, '2024-01-19')
    GO
    -- Tablolara Veri Ekleme Bitiş

