-- Mengambil Semua Data
SELECT * FROM teachers;

-- Mengambil Column first_name, school
SELECT first_name, school, salary
from teachers;

-- Mengambil Data dimana school = MITteachers
SELECT *
FROM teachers
where school = 'MIT' and salary>37000;

-- Mengambil Data dimana school = MITteachers/Standford University
SELECT *
FROM teachers
where school = 'MIT' or school = 'Standford University';

SELECT *
FROM teachers
where school IN ('MIT', 'Standford University');

SELECT *
FROM teachers
where BINARY school IN ('MIT', 'Standford University');

-- Mencari Jumlah Guru dimana school=MIT/Standford University
SELECT COUNT(*)
FROM teachers
WHERE school IN ('MIT', 'Standford University');

SELECT COUNT(*) as "Jumlah Guru"
FROM teachers
WHERE school IN ('MIT', 'Standford University');

-- Mengambil Data dimana school = MIT/Standford University dan diurutkan berdasarkan gajiteachers
SELECT *
FROM teachers
where school IN ('MIT', 'Standford University')
ORDER BY salary ASC;

SELECT *
FROM teachers
where school IN ('MIT', 'Standford University')
ORDER BY salary DESC;

-- Mencari Tahu Berapa Banyak Sekolah di Database
SELECT DISTINCT school
FROM teachers

SELECT COUNT (DISTINCT school)
FROM teachers