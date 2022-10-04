SELECT N, 
    IF(P IS NULL, 'Root', 
       IF((N IN (SELECT P FROM BST)),'Inner','Leaf'))
FROM BST ORDER BY N

/*
Cara memahami :
1. Pilih kolom N
2. Buat fungsi IF dimana berisi
  A. Jika P IS NULL maka kondisi truenya = Root
  B. Jika P IS NOT NULL, buat fungsi IF baru yang berisi
                 a. Jika nilai kolom N ada di nilai kolom P, maka kondisi truenya = Innear.
                 b. Jika tidak ada, maka kondisinya Leaf.
3. FROM BST (Syntax ketetapan)
4. Urutkaan berdasarkan nilai N (ORDER BY N)
*/
