CREATE DATABASE IF NOT EXISTS pretest;
USE pretest;

-- BANG 1
DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users(
id				INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
first_name		VARCHAR(30),
last_name		VARCHAR(30),
email 			VARCHAR(100) UNIQUE KEY,
phone			VARCHAR(20) UNIQUE KEY,
employee_id		VARCHAR(2) UNIQUE KEY,
avatar 			VARCHAR(50),
department_id	INT,
gender			TINYINT,
age				MEDIUMINT,
created_at		DATETIME,
updated_at 		DATETIME
);
INSERT INTO 
users(first_name,  last_name, 		email, 				   phone, 	employee_id, avatar, department_id, gender, age, 	created_at, 	updated_at)
VALUES  ('Phan', 	'Dat', 	'datminh797@gmail.com', 	'0972292907', 	'1', 	'minhdat', 		1, 		1, 		24, 	'2020-03-19', 	'2020-04-19' ),
		('Hai', 	'Yen', 	'haiyen95@gmail.com', 		'0396335560', 	'2', 	'haiyen', 		2, 		2, 		26, 	'2020-01-15', 	'2020-03-15' ),
		('Minh', 	'Khoi', 'khoihoi@gmail.com', 		'0987653266', 	'3', 	'minhkhoi', 	3, 		1, 		15, 	'2018-06-24', 	'2020-08-26' ),
		('Ngoc', 	'Thuy', 'thuyngoc@gmail.com', 		'0985556756', 	'4', 	'thuyngoc', 	1, 		2, 		41, 	'2019-02-24', 	'2020-03-26' ),
		('Gia', 	'Bao', 	'tomcua@gmail.com', 		'0977677875', 	'5', 	'tomcua', 		3, 		1, 		12, 	'2021-03-24', 	'2021-04-15' ),
		('Bao', 	'Chau', 'bongquat@gmail.com', 		'0989882123', 	'6', 	'bongquat', 	2, 		2, 		9, 		'2020-05-30', 	'2020-06-01' ),
		('The', 	'Long', 'longtoi@gmail.com', 		'0982391286', 	'7', 	'lonngtoi', 	4, 		1, 		38, 	'2019-02-24', 	'2020-01-15' ),
        ('Thien', 	'Ha', 	'cunngu@gmail.com', 		'0987654322', 	'8', 	'cunngu', 		4, 		2, 		19, 	'2018-07-07', 	'2019-01-05' ),
        ('Bac', 	'Khanh', 'bongmomdai@gmail.com', 	'0371899762', 	'9', 	'bongmomdai', 	2, 		2, 		12, 	'2019-04-11', 	'2019-07-13' ),
        ('Minh', 	'Tho', 	'minhtho@gmail.com', 		'0982851121', 	'10', 	'minhtho', 		1, 		2, 		57, 	'2017-06-14', 	'2018-02-24' ),
		('Thuy', 	'Linh', 'thuylinh@gmail.com', 		'0983389168', 	'11', 	'nhibeo', 		3, 		2, 		27, 	'2020-11-25', 	'2020-12-31' ),
        ('Minh', 	'Tuan', 'tuanhoi@gmail.com', 		'0933445566', 	'12', 	'tuanhoi', 		2, 		1, 		44, 	'2017-06-12', 	'2018-04-24' ),
        ('Thi', 	'Xim', 	'ximam@gmail.com', 			'0986113113', 	'13', 	'ximam', 		3, 		2, 		33, 	'2020-03-05', 	'2020-05-17' ),
        ('Thi', 	'Trang', 'tranglon@gmail.com', 		'0334573622', 	'14', 	'tranglon', 	2, 		2, 		16, 	'2018-12-02', 	'2019-03-06' ),
        ('Hoai', 	'Thu', 	'tuanthu@gmail.com', 		'0987685563', 	'15', 	'tuanthu', 		4, 		2, 		38, 	'2020-11-01', 	'2020-12-24' );
-- BANG 2
CREATE TABLE IF NOT EXISTS users_department(
id				INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
user_rid 		INT ,
department_id	INT,
start_date		DATETIME, 
end_date		DATETIME,	
created_at		DATETIME,
updated_at 		DATETIME
);

-- BANG 3 
CREATE TABLE IF NOT EXISTS department(
id				INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name`	 		VARCHAR(100),
desciption		VARCHAR(100),	
created_at		DATETIME,
updated_at 		DATETIME
);

-- BANG 4 
CREATE TABLE IF NOT EXISTS user_role(
id							INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
user_department_id	 		VARCHAR(100),
role_id						INT,
start_date					DATETIME,
end_date					DATETIME,
created_at					DATETIME,
updated_at 					DATETIME
);

-- BANG 5 
CREATE TABLE IF NOT EXISTS roles(
id							INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name`				 		VARCHAR(30),	
created_at					DATETIME,
updated_at 					DATETIME
);

-- BANG 6 
CREATE TABLE IF NOT EXISTS salary(
id				INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
user_role_id	VARCHAR(30) UNIQUE KEY,
total_salary	DOUBLE (12,2),
`month` 		VARCHAR(10), 
`year`			VARCHAR(10), 
created_at		DATETIME, 
updated_at 		DATETIME
);

-- BANG 7 
CREATE TABLE IF NOT EXISTS salary_detail(
id						INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
amount 					DOUBLE (12,2),
salary_id				INT, 
salary_detail_type_ID	INT,
operation 				TINYINT 
);

-- BANG 8 
CREATE TABLE IF NOT EXISTS salary_detail_type(
id						INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name`					VARCHAR(20),
created_at				DATETIME,
updated_at 				DATETIME	
);


/*==============================BÀI LÀM=============================================*/

