-- Gabungkan table teachers dengan table courses
select *
from teachers
join courses on teachers.id=courses.teachers_id

select teachers.first_name, courses.name, courses.total_students
from teachers
join courses on teachers.id=courses.teachers_id

-- Mencari dosen yang mengajara mata kuliah Calculus
select *
from teachers
join courses on teachers.id=courses.teachers_id
where courses.name='Calculus';

-- Mencari Jumlah Mata Kuliah di Setiap Universitas
SELECT teachers.school, count(courses.id) as jumlah_mata_kuliah
FROM teachers
join courses on teachers.id=courses.teachers_id
group by teachers.school






