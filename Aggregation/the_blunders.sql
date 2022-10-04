SELECT
CEIL(AVG(SALARY) - AVG(REPLACE(SALARY,0,'')))
FROM employees

/*
Cara memahami code:
1. Cari jumlah rata-rata sebenarnya menggunakan AVG
2. Cari jumlah rata-rata yang dimana angka nol dihilangkan menggunakan REPLACE (Ini dimaksudkan sebagai kesalahan error rata-rata) 
3. Bulatkan hasil perbedaan ke angka selanjutnya menggunakan CEIL
*/
