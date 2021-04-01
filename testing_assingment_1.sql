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