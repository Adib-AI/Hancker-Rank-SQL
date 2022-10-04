SELECT 
MONTHS * SALARY AS earnings,
COUNT(*)
FROM employee
WHERE (MONTHS * SALARY) IN (SELECT MAX(MONTHS * SALARY) FROM employee)
GROUP BY earnings

/*
Cara memahami code:
1. Buat kolom baru earnings untuk hasil months * salary
2. hitung total data dengan syarat
  a. earnings (MONTHS * SALARY) dengan nilai terbesar
  b. karena kita menghitung data dan memunculkan satu nilai menggunakan IN, maka harus di group by kan.
*/
