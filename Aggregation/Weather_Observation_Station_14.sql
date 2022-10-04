SELECT
ROUND(MAX(LAT_N),4)
FROM STATION
WHERE LAT_N < 137.2345

/*
Cara memahami code:
1. Mencari nilai terbesar pada kolom LAT_N dan dibulatkan 4 angka di belakang koma
2. Dimana syarat nilai terbsesar tersebut < (kurang dari) 137.2345
*/
