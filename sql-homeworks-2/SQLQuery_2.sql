/*
SELECT Personel.PersonelID, Personel.Ad, Personel.Soyad, Maaslar.MaasMiktari
FROM Personel
JOIN Maaslar ON Personel.PersonelID = Maaslar.PersonelID
WHERE Maaslar.GuncellemeTarihi = (
SELECT MAX(GuncellemeTarihi)
FROM Maaslar AS M
WHERE M.PersonelID = Maaslar.PersonelID
);
*/


/*
SELECT AVG(MaasMiktari) AS OrtalamaMaas
FROM Maaslar;
*/


/*
SELECT Pozisyon, MAX(MaasMiktari) AS EnYuksekMaas, MIN(MaasMiktari) AS EnDusukMaas
FROM Personel
JOIN Maaslar ON Personel.PersonelID = Maaslar.PersonelID
GROUP BY Pozisyon;
*/


/*
SELECT Ad, Soyad, Pozisyon
FROM Personel;
*/


/*
SELECT Pozisyon, COUNT(*) AS PersonelSayisi
FROM Personel
GROUP BY Pozisyon;
*/


/*
SELECT Personel.Ad, Personel.Soyad, Maaslar.MaasMiktari, Maaslar.GuncellemeTarihi
FROM Personel
JOIN Maaslar ON Personel.PersonelID = Maaslar.PersonelID
WHERE Maaslar.GuncellemeTarihi = (
SELECT MAX(GuncellemeTarihi)
FROM Maaslar AS M
WHERE M.PersonelID = Maaslar.PersonelID
);
*/


/*
SELECT Ad, Soyad
FROM Personel
WHERE Pozisyon = 'Öğretmen';
*/


/*
SELECT AVG(MaasMiktari) AS OrtalamaMaas
FROM Maaslar;
*/


/*
SELECT Ad, Soyad, MaasMiktari
FROM Personel
JOIN Maaslar ON Personel.PersonelID = Maaslar.PersonelID
ORDER BY MaasMiktari DESC
LIMIT 1;
*/


/*
SELECT Ogrenciler.OgrenciAdi, Dergiler.DergiAdi, Dergiler.Yayınci
FROM OduncAlmalar
JOIN Ogrenciler ON OduncAlmalar.OgrenciID = Ogrenciler.OgrenciID
JOIN Dergiler ON OduncAlmalar.DergiID = Dergiler.DergiID;
*/


/*
SELECT MaasMiktari, GuncellemeTarihi
FROM Maaslar
WHERE PersonelID = 1
ORDER BY GuncellemeTarihi;
*/


/*
SELECT Pozisyon, MAX(MaasMiktari) AS EnYuksekMaas, MIN(MaasMiktari) AS EnDusukMaas
FROM Personel
JOIN Maaslar ON Personel.PersonelID = Maaslar.PersonelID
GROUP BY Pozisyon;
*/


/*
SELECT Personel.Ad, Personel.Soyad, Maaslar.GuncellemeTarihi
FROM Personel
JOIN Maaslar ON Personel.PersonelID = Maaslar.PersonelID
WHERE Maaslar.GuncellemeTarihi >= DATEADD(MONTH, -6, GETDATE());
*/

/*
SELECT PersonelID, COUNT(*) AS GuncellemeSayisi
FROM Maaslar
GROUP BY PersonelID
HAVING COUNT(*) >= 2;
*/