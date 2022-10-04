SELECT co.continent, FLOOR(AVG(ci.population)) FROM country co INNER JOIN city ci ON co.code = ci.countrycode
GROUP BY co.continent

/*
Cara memhami code:
1. pilih continent dari tabel country
2. hitung rata-rata population menggunakan AVG dan bulatkan kebawah menggunakan FLOOR
3. buat irisin antara country sebagai 'co' dan city sebagai 'ci' menggunakan INNER JOIN
4. Gunakan kolom 'code' dari city dan 'countrycode' dari country sebagai penghubung dua kolom
5. Kelompokkna kolom continent menggunakan GROUP BY karena terdapat aggeragation pada kolom population yaitu AVG
*/
