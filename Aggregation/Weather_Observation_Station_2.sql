SELECT 
ROUND(SUM(LAT_N),2) AS LAT,
ROUND(SUM(LONG_W),2) AS LON
FROM STATION

/*
Cara memahami code:
1. Menambahkan semua nilai pada kolom LAT_N, LONG_W menggunakan SUM
2. Dibulatkan 2 angka dibelakang koma hasil SUM menggunakan ROUND
*/
