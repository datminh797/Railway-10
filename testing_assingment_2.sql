CREATE DATABASE IF NOT EXISTS Testing_System_Assignment_2;
use Testing_System_Assignment_2;
CREATE TABLE IF NOT EXISTS Department (
    `DepartmentID`		 	INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `DepartmentName` 		VARCHAR(50) NOT NULL
);
insert into Department (departmentName) values 
('bo phan hanh chinh'),
('bo phan chat luong'),
('bo phan mua hang');





CREATE TABLE IF NOT EXISTS `Position` (
    `PositionID` 			INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `Positionname` 			VARCHAR(100)
);
insert into Position (Positionname) values 
('Giam doc'),
('Thu ky'),
('Le Tan');





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
values (1, 'abc1@gmail.com', 'abc1', 1, 1, now() ),   
		(2, 'abc2@gmail.com', 'abc2', 2,2,now()),
		(3, 'abc3@gmail.com', 'abc3', 3,3,now());    
        select *from acount;





CREATE TABLE IF NOT EXISTS `Group`(
`GroupID`					INT,	
`GroupName`					VARCHAR(50),
`CreatorID`					VARCHAR(50),
`CreateDate`				DATE
);
ALTER TABLE `Group`
change column `GroupID`  `GroupID` INT AUTO_INCREMENT;
INSERT INTO `Group`(`GroupName`) VALUES 
('Phong Hanh Chinh'),
('Phong Ke Toan'),
('Phong Bao Ve');
select *from `Group`;

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
CREATE TABLE IF NOT EXISTS `CatergoryQuestion`(
`CatergoryID`				INT, 
`CaterorynName`				VARCHAR(30)
);
insert into TypeQuestion (TypeID, TypeName)
values ( 1, 'cau hoi tu luan' ),
		(2, 'cau hoi trac nghiem');
insert into CatergoryQuestion (CaterorynName) values 
('cau hoi tu luan'),
('cau hoi trac nghiem');

CREATE TABLE IF NOT EXISTS `Question`(
`QuestionID`				INT,
`Content`					VARCHAR(100),
`CatergoryID`				INT, 
`TypeID`					INT, 
`CreatorID`					INT,
`CreateDate`				DATE
);
alter table Question
modify Content varchar(100) not null primary key;
show columns from question;
CREATE TABLE IF NOT EXISTS `Answer`(
`AnswerID`					INT,
`Content`					VARCHAR(100),
`QuestionID`				INT, 
`isCorrect`					VARCHAR(10)
);
alter table `Answer`
add constraint FK_3 foreign key (`Content`) references Question (`Content`);





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
