WITH pattern AS (
    SELECT 1 AS thershold
    UNION ALL
    SELECT thershold + 1
    FROM pattern 
    WHERE thershold < 20)

SELECT REPLICATE('* ', thershold) FROM pattern


/*
Ini kebalikan dari Draw_the_triangel1.sql
*/
