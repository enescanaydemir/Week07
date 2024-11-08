/*
Tüm kitapların adını, yazarını ve yayın yılını listeleyin. (SELECT ve FROM)

SELECT KitapAdi, Yazar, YayinYili
FROM Kitaplar
*/


/*
Yayın yılı 2000’den sonra olan kitapların isimlerini ve yazarlarını listeleyin. (WHERE)

SELECT KitapAdi, Yazar, YayinYili
FROM Kitaplar

WHERE YayinYili > 2000;
*/


/*
Hangi öğrencinin hangi kitapları ödünç aldığını gösteren bir liste oluşturun. (JOIN)
*/

/*
SELECT Ogrenciler.OgrenciID, Ogrenciler.OgrenciAdi, Kitaplar.KitapAdi
FROM OduncAlmalar
JOIN Ogrenciler ON OduncAlmalar.OgrenciID = Ogrenciler.OgrenciID
JOIN Kitaplar ON OduncAlmalar.KitapID = Kitaplar.KitapID;
*/


/*
En fazla sayfa sayısına sahip 5 kitabı sayfa sayısına göre azalan sırayla listeleyin.(ORDER BY ve LIMIT)
*/

/*
SELECT KitapAdi, SayfaSayisi
FROM Kitaplar
ORDER BY SayfaSayisi DESC
LIMIT 5;
*/

/*
"Orhan Pamuk" adlı yazarın kitaplarını listeleyin. (WHERE)
*/

/*
SELECT KitapAdi
FROM Kitaplar
WHERE Yazar = 'Orhan Pamuk';
*/


/*
Öğrencilerin ödünç aldığı dergileri ve bu dergilerin yayıncılarını listeleyin. (JOIN)
*/

/*
SELECT Ogrenciler.OgrenciAdi, Dergiler.DergiAdi, Dergiler.Yayınci
FROM OduncAlmalar
JOIN Ogrenciler ON OduncAlmalar.OgrenciID = Ogrenciler.OgrenciID
JOIN Dergiler ON OduncAlmalar.DergiID = Dergiler.DergiID;
*/


/*
Henüz hiçbir materyal ödünç almayan öğrencileri listeleyin. (LEFT JOIN ve IS NULL)
*/

/*
SELECT Ogrenciler.OgrenciAdi
FROM Ogrenciler
LEFT JOIN OduncAlmalar ON Ogrenciler.OgrenciID = OduncAlmalar.OgrenciID
WHERE OduncAlmalar.OgrenciID IS NULL;
*/


/*
Her kitabın, derginin ve DVD'nin kaç kez ödünç alındığını gruplandırarak listeleyin. (GROUP BY)
*/

/*
SELECT 'Kitap' AS Materyal, KitapAdi AS Ad, COUNT(OduncAlmalar.KitapID) AS OduncSayisi
FROM Kitaplar
LEFT JOIN OduncAlmalar ON Kitaplar.KitapID = OduncAlmalar.KitapID
GROUP BY Kitaplar.KitapID

UNION ALL

SELECT 'Dergi', DergiAdi, COUNT(OduncAlmalar.DergiID)
FROM Dergiler
LEFT JOIN OduncAlmalar ON Dergiler.DergiID = OduncAlmalar.DergiID
GROUP BY Dergiler.DergiID

UNION ALL

SELECT 'DVD', DVDAdi, COUNT(OduncAlmalar.DVDID)
FROM DVDler
LEFT JOIN OduncAlmalar ON DVDler.DVDID = OduncAlmalar.DVDID
GROUP BY DVDler.DVDID;
*/



/*
Yayın tarihi en eski olan 3 kitabı listeleyin. (ORDER BY ve LIMIT)
*/

/*
SELECT KitapAdi, YayınYılı FROM Kitaplar
ORDER BY YayınYılı ASC
LIMIT 3;
*/


/*
"Ali Yılmaz" adlı öğrencinin ödünç aldığı tüm materyalleri listeleyin. (WHERE ve JOIN)
*/

/*
SELECT 'Kitap' AS Materyal, Kitaplar.KitapAdi AS Ad FROM OduncAlmalar
JOIN Ogrenciler ON OduncAlmalar.OgrenciID = Ogrenciler.OgrenciID
JOIN Kitaplar ON OduncAlmalar.KitapID = Kitaplar.KitapID
WHERE Ogrenciler.OgrenciAdi = 'Ali Yılmaz'

UNION ALL

SELECT 'Dergi', Dergiler.DergiAdi FROM OduncAlmalar
JOIN Ogrenciler ON OduncAlmalar.OgrenciID = Ogrenciler.OgrenciID
JOIN Dergiler ON OduncAlmalar.DergiID = Dergiler.DergiID
WHERE Ogrenciler.OgrenciAdi = 'Ali Yılmaz'

UNION ALL

SELECT 'DVD', DVDler.DVDAdi FROM OduncAlmalar
JOIN Ogrenciler ON OduncAlmalar.OgrenciID = Ogrenciler.OgrenciID
JOIN DVDler ON OduncAlmalar.DVDID = DVDler.DVDID
WHERE Ogrenciler.OgrenciAdi = 'Ali Yılmaz';
*/