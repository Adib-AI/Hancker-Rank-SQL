SELECT
ROUND(SUM(LAT_N),4)
FROM STATION
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345

/*
Cara memahami code:
1. Menambahkan nilai semua pada kolom LAT_N menggunakan SUM
2. Membulatkan 4 angka dibelakang koma dari hasil SUM menggunakan ROUND
3. Mencari nilai hasil SUM dan ROUND diamana LAT_N > 38.7880 dan LAT_N < 137.2345
*/
