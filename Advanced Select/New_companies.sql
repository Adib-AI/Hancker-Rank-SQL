SELECT 
EE.company_code,
CY.founder,
COUNT(DISTINCT EE.lead_manager_code),
COUNT(DISTINCT EE.Senior_Manager_Code),
COUNT(DISTINCT EE.manager_code),
COUNT(DISTINCT EE.employee_code)
FROM Employee EE JOIN COMPANY CY
ON  EE.company_code = CY.company_code
GROUP BY EE.company_code, CY.founder
ORDER BY EE.company_code

/*
Cara memahami code:
1. Pada tabel Employee, terdapat 5 kolom yaitu 
  a. company_code
  b. manager_code
  c. senior_manager_code
  d. lead_manager_code
  e. company_code
2. Terdapat 5 tabel yaitu Company, Lead Manger, Senior Manager, Manager dan Employee
3. Terdapat adanya data ganda
4. Output yang diharapkan berapa total pegawai per divisi. Jika dilogikan, harus code setiap divisi terkumpul di tabel Employe semua. 
   Maka, kita bisa melakukan INNER JOIN/JOIN antara tabel COMPANY dan tabel Employee tanpa harus melakukan join satu persatu dengan ke tiga tabel lainnya
5. Untuk menghilangkan data ganda dilakukan menggunakan DISTINCT dan menghitung datanya menggunakan COUNT
6. Untuk mengelompokkan founder dan company_code, menggunakan GROUP BY
7. Setelah itu dilakukan Sorting (mengurutkan) menggunakan ORDER BY.


NOTE:
1. Tiap_code bersifat string bukan integer, jadi tidak diurutkan berdasarkan nomor.
*/
