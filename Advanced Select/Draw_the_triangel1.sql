WITH pattern AS (
    SELECT 20 AS thershold
    UNION ALL
    SELECT thershold - 1
    FROM pattern
    WHERE therhsold > 1
    )
 
SELECT REPLICATE('* ', thershold)
FROM pattern


/*
Cara memahami code:
1. Buat sebuah fungsi yang nanti akan digunakan sebagai tabel menggunakan WITH nama_tabel
2. Buat ambang batas dengan nilai 20
3. UNION ALL untuk menggabungkan tabel pattern yang berisi thershold dengan thershold yang akan dikurang satu setiap kemunculan *
4. Buat batas ketika thershold > 1, maka dia stop. Untuk mencegah kemunculan row ke-21 yang berisi kosong.
5. Buat kemunculan menggunakan REPLICATE.
*/
