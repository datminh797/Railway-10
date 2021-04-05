CREATE DATABASE IF NOT EXISTS testing_assignment_3;
use testing_assignment_3;
-- TABLE1 
CREATE TABLE IF NOT EXISTS department(
DepartmentID		INT PRIMARY KEY AUTO_INCREMENT,
DepartmentName		Varchar(100) UNIQUE KEY
);
ALTER TABLE department
CHANGE COLUMN DepartmentName DepartmentName Varchar(50);
INSERT INTO department (DepartmentName)
VALUES (N'Marketing'),
		(N'Sales'),
        (N'Bao ve'),
        (N'Nhan su'),
        (N'Ky thuat'),
        (N'Tai chinh'),
        (N'Pho giam doc'),
        (N'Giam doc'),
        (N'Thu ky'),
        (N'Ban hang');
-- show columns from department;
select * from department;
-- END OF TABLE 1 	


-- TABLE 2 
CREATE TABLE IF NOT EXISTS `position`(
PositionID 			INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
PositionName		VARCHAR(100)
);
ALTER TABLE `position`
MODIFY PositionName VARCHAR(50);
show COLUMNS from position;
INSERT INTO `position` (PositionName)
VALUES ('Dev'),
		('Test'),
        ('Scrum Master'),
        ('PM');
-- END OF TABLE 2 



-- TABLE 3
DROP TABLE acount;
CREATE TABLE IF NOT EXISTS acount(
AcountID			INT,
Email				VARCHAR(100) UNIQUE KEY,
UserName			VARCHAR(100) UNIQUE KEY,
FullName			VARCHAR(100) UNIQUE KEY,
DepartmentID		INT UNIQUE KEY,
PositionID			INT UNIQUE KEY,
CreateDate			DATETIME UNIQUE KEY
);
-- ALTER TABLE acount
-- DROP INDEX CreateDate;
-- DROP INDEX PositionID;
SHOW COLUMNS FROM acount;
-- MODIFY AcountID INT NOT NULL PRIMARY KEY AUTO_INCREMENT;
-- MODIFY FullName			VARCHAR(100) UNIQUE KEY;
INSERT INTO acount (Email, UserName, Fullname, DepartmentID, PositionID, CreateDate)
VALUES  ('haidang29productions@gmail.com','dangblack', 'Nguyen Hai Dang', '5', '1', '2020-03-05'),
		('account1@gmail.com','quanganh', 'Nguyen Chien Thang2', '1', '2', '2020-03-05'),
        ('account2@gmail.com','vanchien', 'Nguyen Van Chien', '2', '3', '2020-03-07'),
		('account3@gmail.com','cocoduongqua', 'Duong Do', '3', '4', '2020-03-08'),
        ('account4@gmail.com','doccocaubai', 'Nguyen Chien Thang1', '4', '4', '2020-03-10'),
		('dapphatchetngay@gmail.com','khabanh', 'Ngo Ba Kha', '6', '3', '2020-04-05'),
        ('songcodaoly@gmail.com','huanhoahong', 'Bui Xuan Huan', '7', '2', NULL),
		('sontungmtp@gmail.com','tungnui', 'Nguyen Thanh Tung', '8', '1', '2020-04-07'),
        ('duongghuu@gmail.com','duongghuu', 'Duong Van Huu', '9', '2', '2020-04-07'),
        ('vtiaccademy@gmail.com','vtiaccademy','Vi Ti Ai','10','1','2020-04-09');

-- END OF TABLE 3




-- TABLE 4
CREATE TABLE IF NOT EXISTS `group`(
GroupID				INT,
GroupName			VARCHAR(100),
CreatorID			INT,
CreateDate			DATETIME
);
ALTER TABLE `group`
MODIFY GroupID INT NOT NULL PRIMARY KEY AUTO_INCREMENT;
INSERT INTO `group`	(GroupName,CreatorID,CreateDate)
VALUES 				(N'Testing System',5,'2019-03-05'),
					(N'Development',1,'2020-03-07'),
                    (N'VTI Sale 01',2,'2020-03-09'),
                    (N'VTI Sale 02',3,'2020-03-10'),
                    (N'VTI Sale 03',4,'2020-03-28'),
                    (N'VTI Creator',6,'2020-04-06'),
                    (N'VTI Marketing 01',7,'2020-04-07'),
                    (N'Management',8,'2020-04-08'),
                    (N'Chat with love',9,'2020-04-09'),
                    (N'Vi Ti Ai',10,'2020-04-10');

-- END OF TABLE 4



-- TABLE 5 
CREATE TABLE IF NOT EXISTS groupaccount(
GroupID				INT,
AccountID			VARCHAR(100),
JoinDate			DATE
);
ALTER TABLE groupaccount 
CHANGE COLUMN AccountID AccountID VARCHAR(50);
INSERT INTO `GroupAccount`	(  GroupID	, AccountID	, JoinDate	 )
VALUES 						(	1		,    1		,'2019-03-05'),
							(	1		,    2		,'2020-03-07'),
							(	3		,    3		,'2020-03-09'),
							(	3		,    4		,'2020-03-10'),
							(	5		,    5		,'2020-03-28'),
							(	1		,    3		,'2020-04-06'),
							(	1		,    7		,'2020-04-07'),
							(	8		,    3		,'2020-04-08'),
							(	1		,    9		,'2020-04-09'),
							(	10		,    10		,'2020-04-10');
-- END OF TABLE 5




-- TABLE 6
CREATE TABLE IF NOT EXISTS typeQuestion(
TypeID				INT,
TypeName			VARCHAR(100)
);
ALTER TABLE typeQuestion
MODIFY TypeID INT NOT NULL PRIMARY KEY AUTO_INCREMENT;
INSERT INTO TypeQuestion	(TypeName			) 
VALUES 						('Essay'			), 
							('Multiple-Choice'	); 
-- SHOW COLUMNS FROM typeQuestion;
-- END OF TABLE 6 




--  TABLE 7 
CREATE TABLE IF NOT EXISTS catergoryQuestion(
CatergoryID			INT,
CatergoryName		VARCHAR(100)
);
ALTER TABLE catergoryQuestion
MODIFY CatergoryID INT NOT NULL PRIMARY KEY AUTO_INCREMENT;
INSERT INTO CatergoryQuestion		(CatergoryName	)
VALUES 								('Java'			),
									('ASP.NET'		),
									('ADO.NET'		),
									('SQL'			),
									('Postman'		),
									('Ruby'			),
									('Python'		),
									('C++'			),
									('C Sharp'		),
									('PHP'			);
-- END OF TABLE 7 





-- TABLE 8
CREATE TABLE IF NOT EXISTS question (
QuestionID			INT,
Content 			VARCHAR(100),
CatergoryID			INT,
TypeID				INT,
CreatorID			INT, 
CreateDate			DATE
);
ALTER TABLE question 
MODIFY QuestionID INT NOT NULL PRIMARY KEY AUTO_INCREMENT;
INSERT INTO Question	(Content, CatergoryID, TypeID, CreatorID, CreateDate )
VALUES 					(N'Câu hỏi về Java'	,	1		,	'1'			,	'2'		,'2020-04-05'),
						(N'Câu Hỏi về PHP'	,	10		,   '2'			,   '2'		,'2020-04-05'),
						(N'Hỏi về C#'		,	9		,   '2'			,   '3'		,'2020-04-06'),
						(N'Hỏi về Ruby'		,	6		,   '1'			,   '4'		,'2020-04-06'),
						(N'Hỏi về Postman'	,	5		,   '1'			,   '5'		,'2020-04-06'),
						(N'Hỏi về ADO.NET'	,	3		,   '2'			,   '6'		,'2020-04-06'),
						(N'Hỏi về ASP.NET'	,	2		,   '1'			,   '7'		,'2020-04-06'),
						(N'Hỏi về C++'		,	8		,   '1'			,   '8'		,'2020-04-07'),
						(N'Hỏi về SQL'		,	4		,   '2'			,   '9'		,'2020-04-07'),
						(N'Hỏi về Python'	,	7		,   '1'			,   '10'	,'2020-04-07');
SELECT * FROM question;

-- END OF TABLE 8 




-- TABLE 9 
CREATE TABLE IF NOT EXISTS answer(
AnswerID			INT,
Content				VARCHAR(100),
QuestionID			INT, 
isCorrect			BIT
);
ALTER TABLE answer
-- MODIFY AnswerID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
MODIFY isCorrect ENUM('YES','NO') NOT NULL;
-- ADD CONSTRAINT FK_1 FOREIGN KEY (AnswerID) REFERENCES question (QuestionID);
SHOW COLUMNS FROM answer;
INSERT INTO Answer	(Content,QuestionID, isCorrect	)
VALUES 				(N'Trả lời 01'	,   1			,	'No'		),
					(N'Trả lời 02'	,   1			,	'Yes'	),
                    (N'Trả lời 03'	,   1			,	'No'	),
                    (N'Trả lời 04'	,   1			,	'Yes'	),
                    (N'Trả lời 05'	,   2			,	'No'	),
                    (N'Trả lời 06'	,   3			,	'Yes'	),
                    (N'Trả lời 07'	,   4			,	'No'	),
                    (N'Trả lời 08'	,   8			,	'No'		),
                    (N'Trả lời 09'	,   9			,	'Yes'		),
                    (N'Trả lời 10'	,   10			,	'Yes'	);
	
-- END OF TABLE 9





-- TABLE 10 
CREATE TABLE IF NOT EXISTS exam(
ExamID				INT,
`Code`				VARCHAR(100),
Title				VARCHAR(100),
CatergoryID			INT,
Duration			TIME,
CreatorID			INT,
CreateDate			DATE
);
ALTER TABLE exam 
-- MODIFY ExamID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
MODIFY `Code` VARCHAR(20),
MODIFY  Title VARCHAR (50),
MODIFY Duration INT;
INSERT INTO Exam	(`Code`		, Title			, CatergoryID	, Duration	, CreatorID	, CreateDate )
VALUES 				('VTIQ001'	, N'Đề thi C#'		,	1		,	60		,   '5'		,'2019-04-05'),
					('VTIQ002'	, N'Đề thi PHP'		,	10		,	60		,   '2'		,'2019-04-05'),
                    ('VTIQ003'	, N'Đề thi C++'		,	9		,	120		,   '2'		,'2019-04-07'),
                    ('VTIQ004'	, N'Đề thi Java'	,	6		,	60		,   '3'		,'2020-04-08'),
                    ('VTIQ005'	, N'Đề thi Ruby'	,	5		,	120		,   '4'		,'2020-04-10'),
                    ('VTIQ006'	, N'Đề thi Postman'	,	3		,	60		,   '6'		,'2020-04-05'),
                    ('VTIQ007'	, N'Đề thi SQL'		,	2		,	60		,   '7'		,'2020-04-05'),
                    ('VTIQ008'	, 'Đề thi Python'	,	8		,	60		,   '8'		,'2020-04-07'),
                    ('VTIQ009'	, N'Đề thi ADO.NET'	,	4		,	90		,   '9'		,'2020-04-07'),
                    ('VTIQ010'	, N'Đề thi ASP.NET'	,	7		,	90		,   '10'	,'2020-04-08');
        
-- END OF TABLE 10




-- TABLE 11 
CREATE TABLE IF NOT EXISTS examQuestion(
ExamID				INT,
QuestionID			INT
);
INSERT INTO ExamQuestion(ExamID	, QuestionID	) 
VALUES 					(	1	,		5		),
						(	2	,		10		), 
						(	3	,		4		), 
						(	4	,		3		), 
						(	5	,		7		), 
						(	6	,		10		), 
						(	7	,		2		), 
						(	8	,		10		), 
						(	9	,		9		), 
						(	10	,		8		); 
-- END OF TABLE 11 

-- ASSIGNMENT_3
-- Q1: THEM 10 RECORD VAO MOI TABLE 
-- Q2: LAY RA TAT CA PHONG BAN :
select *from department;


-- Q3: LAY RA ID CUA PHONG BAN SALE 
select departmentID from department where departmentName = 'Sales';


-- Q4: LAY RA THONG TIN ACOUNT CO FULL NAME DAI NHAT 
select max(char_length(fullname)), Fullname from acount;
select *from acount where fullname = 'Nguyen Hai Dang';


-- 	Q5: LAY RA THONG TIN ACOUNT CO FULL NAME DAI NHAT VA THUOC PHONG BAN CO ID = 3
select max(char_length(fullname)),fullname from acount where DepartmentID = 3;
select *from acount where fullname = 'Duong Do';


-- Q6: 6: LAY RA TEN GROUP DA THAM GIA TRUOC NGAY 20/12/2019 
select groupID from groupaccount where joindate < '2019-12-20';
select GroupName from `group` where groupID = 1;


-- Q7: LAY RA ID CUA QUESTION CO >= 4 CAU TRA LOI 
select QuestionID, count(Content) >=4 from answer ;


-- Q8: LAY RA CAC MA DE THI CO THOI GIAN THI >= 60 PHUT VA DUOC TAO TRUOC NGAY 20/12/2019
select `code` from exam where duration >= 60 and createdate < '2019-12-20';   


-- Q9: LAY RA 5 GROUP DUOC TAO GAN DAY NHAT 
select GroupID, joindate from groupaccount order by joindate desc limit 5;


-- Q10: DEM SO NHAN VIEN THUOC DEPARTMENT CO ID = 2
-- select FullName from acount where departmentID = 2;
select count(*) from acount where DepartmentID = 2;


-- Q11: LAY RA TEN NHAN VIEN BAT DAU BANG CHU "D" VA KET THUC BANG CHU "O"
select fullname from acount where fullname like '%Do%';


 -- Q12: XOA TAT CA CAC EXAM DUOC TAO TRUOC NGAY 20/12/2019
delete from Exam
where CreateDate < '2019-12-20';  
select * from   Exam order by CatergoryID ;  


-- Q13: XOA TAT CA CAC NOI DUNG BAT DAU BANG TU "CAU HOI"
delete from question 
where content like 'Câu hỏi%';
SELECT * FROM question;

