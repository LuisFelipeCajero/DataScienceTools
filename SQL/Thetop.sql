/*SELECT *
FROM	(
		SELECT ROW_NUMBER() OVER() AS row_id, *
		FROM platzi.alumnos
) AS alumnos_wiht_row_num
;*/

/* BRING 5 FISRT REGISTERS USING FETCH */
SELECT *
FROM platzi.alumnos
FETCH FIRST 5 ROWS ONLY;

/* BRING 5 FIRST REGISTERS USING LIMIT */ 
SELECT *
FROM platzi.alumnos
LIMIT 5;

/* BRING 5 FIRST REGISTERS USING WINDOW FUNCTION*/
SELECT *
FROM	(
		SELECT ROW_NUMBER() OVER() AS row_id, *
		FROM platzi.alumnos
) AS alumnos_wiht_row_num
WHERE row_id between 1 and 5
;
