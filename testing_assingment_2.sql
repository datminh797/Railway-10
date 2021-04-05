CREATE DATABASE IF NOT EXISTS Testing_System_Assignment_2;
use Testing_System_Assignment_2;
CREATE TABLE IF NOT EXISTS Department (
    `DepartmentID`		 	INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `DepartmentName` 		VARCHAR(50) NOT NULL
);
insert into Department (departmentName) values 
('bo phan hanh chinh'),
('bo phan chat luong'),
('bo phan mua hang'),
('bo phan san xuat');
-- select *from department where departmentName like '%bo phan%';
-- select *from department limit 2;





CREATE TABLE IF NOT EXISTS `Position` (
    `PositionID` 			INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `Positionname` 			VARCHAR(100)
);
insert into Position (Positionname) values 
('Giam doc'),
('Thu ky'),
('Le Tan'),
('Truong Phong');





CREATE TABLE IF NOT EXISTS `Acount`(
`AcountID`					INT,
`Email`						VARCHAR(20),
`UserName`					VARCHAR(20),
`Username`					VARCHAR(20),
`DepartmentID`				INT,
`PositionID`				INT,
`CreateDate`				DATE
);
alter table acount 
change column CreateDate CreateDate datetime default now();
/*drop column Username,
add column fullname varchar(100);*/
/*alter CreateDate set default now() ;*/    
insert into Acount (AcountID,Email,FullName,DepartmentID,PositionID,CreateDate)
values (1, 'abc1@gmail.com', 'tran ngoc long', 1, 1, '2019-09-19' ),   
		(2, 'abc2@gmail.com', 'huyen trang', 2,2, '2020-12-23'),
		(3, 'abc3@gmail.com', 'hai yen', 3,3, '2021-09-17'),
        (4, 'abc4@gmail.com', 'bao chau', 4,4, '2020-03-19'),
        (5, 'abc5@gmail.com', 'minh khoi', 5,12, '2021-03-16'),
        (6, 'abc6@gmail.com', 'nguyen van hai dang', 3,2, '2019-06-22'),
        (7, 'abc7@gmail.com', 'minh dat', 3,2, '2020-11-03');
       /* delete 
        from acount 
        where CreateDate < '2021-08-12';*/
        show columns from acount;
-- select *from acount where Createdate < now() ;
-- select *from acount where positionID > 1;
-- select * from Acount where email not like '%abc';
-- select *from acount order by DepartmentID ASC;
-- select count(1) from acount;
-- select count(*) from acount;
-- select sum(acountID) from acount;
-- select max(acountID) from acount;
-- select avg(acountID) from acount;
-- select acountID, count(*) from acount group by acountID;
-- select fullname, char_length(fullname) as charlength from acount order by charlength desc;
-- select max(char_length(fullname)) from acount where DepartmentID = 3;
select max(char_length(fullname)) from acount;
select *from acount where char_length(fullname) = (select max(char_length(fullname)) from acount);
select fullname from acount;









show columns from acount;



CREATE TABLE IF NOT EXISTS `Group`(
`GroupID`					INT,	
`GroupName`					VARCHAR(50) unique key,
`CreatorID`					VARCHAR(50),
`CreateDate`				DATE
);
ALTER TABLE `Group`
change column `GroupID`  `GroupID` INT AUTO_INCREMENT;
INSERT INTO `Group`(`GroupName`) VALUES 
('Phong Hanh Chinh'),
('Phong Ke Toan'),
('Phong Bao Ve'),
('Phong Marketing'),
('Phong Mua Ban'),
('Phong Thiet Ke');
select *from `group` where groupname like '%Phong%';

/*ALTER TABLE `Group`
MODIFY GroupID INT NOT NULL PRIMARY KEY;*/
CREATE TABLE IF NOT EXISTS `Group Acount`(
`GroupID`					INT,
`AcountID`					INT,
`JoinDate`					DATE	
);
/* ALTER TABLE `Group Acount`
ADD CONSTRAINT FK1 FOREIGN KEY (GroupID) REFERENCES `Group` (GroupID);
ALTER TABLE `Group Acount`
drop constraint FK1;*/
CREATE TABLE IF NOT EXISTS `TypeQuestion`(
`TypeID`					INT,
-- auto increment 
`TypeName`					VARCHAR(30)
);
drop table if exists CatergoryQuestion;
CREATE TABLE IF NOT EXISTS `CatergoryQuestion`(
`CatergoryID`				INT PRIMARY KEY AUTO_INCREMENT, 
`CaterorynName`				VARCHAR(30)
);
insert into TypeQuestion (TypeID, TypeName)
values ( 1, 'cau hoi tu luan' ),
		(2, 'cau hoi trac nghiem');
insert into CatergoryQuestion (CaterorynName) values 
('cau hoi tu luan'),
('cau hoi trac nghiem');
select *from catergoryquestion;
/*delete 
from CatergoryQuestion
where CatergoryID = 1;*/
show columns from catergoryquestion;


CREATE TABLE IF NOT EXISTS `Question`(
`QuestionID`				INT,
`Content`					VARCHAR(100),
`CatergoryID`				INT, 
`TypeID`					INT, 
`CreatorID`					INT,
`CreateDate`				DATE
);
alter table Question
-- modify Content varchar(100) not null primary key;
change column CreateDate CreateDate DATETIME default now();

show columns from question;





CREATE TABLE IF NOT EXISTS `Answer`(
`AnswerID`					INT,
`Content`					VARCHAR(100),
`QuestionID`				INT, 
`isCorrect`					VARCHAR(10)
);
insert into answer ( content, questionID, answerID )
values ('Cau tra loi 1', 1, 1),
		('Cau tra loi 2', 2, 2),
		('Cau tra loi 3', 3, 3),
        ('Cau tra loi 4', 4, 4);
	select *from answer where content like '1%';
/*alter table `Answer`
add constraint FK_3 foreign key (`Content`) references Question (`Content`);*/
show columns from answer;





CREATE TABLE IF NOT EXISTS `Exam` (
`ExamID`					INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`Code`						INT,
`Title`						VARCHAR(50),
`CatergoryID`				INT,
`Duration`					TIME,
`CreatorID`					INT,
`CreateDate`				DATE					
);
alter table `Exam`
alter  CreateDate set default '2021-04-01';
select *from exam;
CREATE TABLE IF NOT EXISTS `ExamQuestion`(
`ExamID`					INT,
`QuestionID`  				INT
);
