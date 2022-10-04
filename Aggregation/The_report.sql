SELECT IF(g.grade >= 8, s.name, 'NULL') AS name , g.grade, s.marks FROM
students s LEFT JOIN grades g ON s.marks >= g.min_mark AND s.marks <= g.max_mark
ORDER BY g.grade DESC, s.name ASC


/*
Cara memahami code:
1. Gunakan patokan pada kolom grade pada tabel grades jika gradenya >= 8, maka isi dengan students.name, tapi kalau salah isi dengan 'NULL'
2. ambil kolom grade pada tabel grades
3. ambil marks pada kolom students
4. Karena patokannya ada di nilai tabel students, maka gunakan LEFT join dimana harus tabel students dikiri (HARUS)
5. Gunakan marks pada tabel students sebagai penghubung dengan tabel grades dengan min_mark dan max_mark dimana ini digunakan untuk menentukan nilai marks pada 
   students masuk ke grade pada grades yang mana. Ini terhubung ke fungsi IF jika dari grades yang ditentukan masuk ke >= 8, maka bisa dilihat pada nomor 1
6. Urutkan nilai g.grade dari tertinggi, dan nama sesuai alphabet
*/
