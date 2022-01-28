-- Melihat semua data teachers
SELECT *
from teachers;

-- Melihat semua data teachers yang berasal dari Cambridge Universityteachers
SELECT *
from teachers
where school = 'Cambridge University';

-- Aggregate function - min, max, avg dengan round/floor/ceil

sELECT count(*)
from teachers;

SELECT count(*)
from courses;

select min(salary)
from teachers
where school= 'Cambridge University';

select MAX(salary)
from teachers
where school= 'Cambridge University';

select AVG(salary)
from teachers
where school= 'Cambridge University';

select AVG(salary), round(AVG(salary))
from teachers
where school= 'Cambridge University';

-- Dosen yang mengajar di Cambrigde University dengan gaji terkecil
SELECT first_name, last_name, school, MIN(salary)
FROM teachers
WHERE school = 'Cambridge University'

-- SUBQUERY: Menampilkan semua kolom dimana dosen mengajar di Cambridge University dan mempunyai gaiji terkecilteachers

select *
from teachers
WHERE school= 'Cambridge University' AND salary=(
  SELECT MIN(salary)
  FROM teachers
  WHERE school= 'Cambridge University'
 );
 
 -- SUBQUERY: menampilkan semua kolom di mana dosen mengajar di MIT yang memiliki gaji lebih besar dari gaji rata-rata dosen di Standford 
 select *
 from teachers
 where school = 'MIT' and salary=(
   select avg(salary)
   from teachers
   where school ='Standford University'
 );
 
 -- Menampilkan first_name, last_name, school, salary  di mana dosen memiliki gaji terkecil disetiap universitasteachers
 select school, min(salary)
 FRom teachers
 group by school
 
SELECT *
FROM teachers
WHERE salary IN (
  SELECT MIN(salary)
  FROM teachers
  GROUP BY school)
GROUP BY school;

 
 
 
 
 
 
 
 
 