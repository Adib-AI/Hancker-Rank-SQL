SELECT ROUND(LAT_N,4) FROM
                    (SELECT LAT_N, ROW_NUMBER() OVER(ORDER BY LAT_N ASC) AS NB FROM STATION) AS Swadikap
WHERE NB IN (SELECT ROUND((COUNT(ID)+1)/2,0) FROM STATION)


/* Penjelasan Sedikit
1. ROW_NUMBER() Digunakan untuk membuat Nomor urutan baru ketika fungsi over digunakan
2. Over digunakan menampung fungsi ORDER BY dan dibuat kolom baru bernama NB (Nomor Baris)
3. Kolom NB digunakan sebagai kolom pencarian
4. ROUND digunakan untuk pembulan hasil bagi antara (COUNT(ID)+1)/2 dengan dibulatkan belakang koma = 0

NOTE: 
1. ID digunakan untuk memudahkan saja membacanya
2. Swadikap itu gua pakai karena kebiasan aja :v
*/
