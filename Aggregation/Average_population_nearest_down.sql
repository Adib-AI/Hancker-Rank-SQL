SELECT FLOOR(AVG(population)) FROM CITY

/*
Cara memahami code
1. cari rata-rata populasi (menggunakan AVG) dan bulatkan kebawah dengan mengembalikan sebagai Integer (menggunakan FLOOR)

NOTE:
1. FLOOR digunakan ketika dibulatkan kebawah
2. ROUND digunakan tergantung angka dibelakang koma. Contoh, jika 1.6 akan dibulatkan ke atas menjadi 2 dan jika 1.1 akan dibulatkan ke bawah menjadi 1
3. CEILING digunakan ketika dibulatkan ke atas tanpa memperhatikan angka dibelakang koma. Contoh, 1.1 akan dibulatkan menjadi 2
*/
