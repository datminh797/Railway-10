create database if not exists Testing_System_Assigment;
use Testing_System_Assigment;
-- đây là comment 
## đây cũng là comment
CREATE TABLE IF NOT EXISTS Department (
    `DepartmentID` INT,
    -- auto increment : chữ số theo giá trị của cột DepartmentID tự động tăng 
    `DepartmentName` VARCHAR(50)
    -- kiểu NVARCHAR : Cho phép gõ kiểu UTF - 8 : Gõ được ký tự có dấu, tiếng việt
);
CREATE TABLE IF NOT EXISTS position (
    `PositionID` INT,
    `Positionname` VARCHAR(100)
);
CREATE TABLE IF NOT EXISTS `Acount`(
`AcountID`					INT,
`Email`						VARCHAR(20),
`Username`					VARCHAR(20),
`Fullname`					VARCHAR(20),
`DepartmentID`				INT,
`PositionID`				INT,
`CreateDate`				DATE
);
CREATE TABLE IF NOT EXISTS `Group`(
`GroupID`					INT,
`GroupName`					VARCHAR(50),
`CreatorID`					VARCHAR(50),
`CreateDate`				DATE
);
CREATE TABLE IF NOT EXISTS `Group Acount`(
`GroupID`					INT, 
`AcountID`					INT,
`JoinDate`					DATE	
);
CREATE TABLE IF NOT EXISTS `TypeQuestion`(
`TypeID`					INT,
-- auto increment 
`TypeName`					VARCHAR(30)
);
CREATE TABLE IF NOT EXISTS `CatergoryQuestion`(
`CatergoryID`				INT, 
`CaterorynName`				VARCHAR(30)
);
CREATE TABLE IF NOT EXISTS `Question`(
`QuestionID`				INT,
`Content`					VARCHAR(100),
`CatergoryID`				INT, 
`TypeID`					INT, 
`CreatorID`					INT,
`CreateDate`				DATE
);
CREATE TABLE IF NOT EXISTS `Answer`(
`AnswerID`					INT,
`Content`					VARCHAR(100),
`QuestionID`				INT, 
`isCorrect`					VARCHAR(10)
);
CREATE TABLE IF NOT EXISTS `Exam` (
`ExamID`					INT,
`Code`						INT,
`Title`						VARCHAR(50),
`CatergoryID`				INT,
`Duration`					TIME,
`CreatorID`					INT,
`CreateDate`				DATE					
);
CREATE TABLE IF NOT EXISTS `ExamQuestion`(
`ExamID`					INT,
`QuestionID`  				INT
);