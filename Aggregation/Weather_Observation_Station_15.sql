SELECT 
ROUND(LONG_W,4) 
FROM STATION 
WHERE 
LAT_N IN (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345)

/*
Cara memahami code:
1. Cari Nilai di kolom LONG_W dimana syaratnya nilai terbesar dikolom LAT_N < 137.2345 (menggunakan IN)
2. Ingat, kolom di STATION itu ada ID, CITY, STATE, dan LAT_N dan LONG_W
3. Hasil yang didapatkan dibulatkan 4 angka di belakang koma
*/
