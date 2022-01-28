-- Create Table teachers
CREATE TABLE teachers(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  	first_name VARCHAR (25) NOT NULL,
  	last_name VARCHAR (50),
  	school varchar (50) not NULL,
  	hire_date DATE,
  	salary NUMERIC
);

-- Insert Data
INSERT INTO teachers (id,first_name, last_name, school, hire_date, salary)
    VALUES (1,'Janet', 'Smith', 'MIT', '2011-10-30', 36200),
           (2,'Lee', 'Reynolds', 'MIT', '1993-05-22', 65000),
           (3,'Samuel', 'Cole', 'Cambridge University', '2005-08-01', 43500),
           (4,'Samantha', 'Bush', 'Cambridge University', '2011-10-30', 36200),
           (5,'Betty', 'Diaz', 'Cambridge University', '2005-08-30', 43500),
           (6,'Kathleen', 'Roush', 'MIT', '2010-10-22', 38500),
           (7,'James', 'Diaz', 'Harvard University', '2003-07-18', 61000),
           (8,'Zack', 'Smith', 'Harvard University', '2000-12-29', 55500),
           (9,'Luis', 'Gonzales', 'Standford University', '2002-12-01', 50000),
           (10,'Frank', 'Abbers', 'Standford University', '1999-01-30', 66000);

SELECT * FROM teachers

-- Menambah Column age
ALTER TABLE teachers ADD age INT;

-- Menghapus Column age
alter table teachers drop column age;

-- Mengganti Tipe Data
ALTER table teachers modify column salary INT;

-- Menambah Data Baru
INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
    VALUES ('Samuel', 'Abbers', 'Standford University', '2006-01-30', 32000),
           ('Jessica', 'Abbers', 'Standford University', '2005-01-30', 33000),
           ('Tom', 'Massi', 'Harvard University', '1999-09-09', 39500),
           ('Esteban', 'Brown', 'MIT', '2007-01-30', 36000),
           ('Carlos', 'Alonso', 'Standford University', '2001-01-30', 44000);

-- Mengganti Nama Table teachers ke guru
ALTER TABLE teachers RENAME TO guru;

-- Melihat Data di Table guru
select * from guru;

-- Mengosongkan Data di Table guru
TRUNcate table guru;

-- Menghapus Table
drop table guru;

-- Menghapus Data dengan id = 2 (1 baris data)
delete from guru where id=2