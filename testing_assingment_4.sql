CREATE DATABASE IF NOT EXISTS Testing_System_Assignment_5;
USE Testing_System_Assignment_5;

-- TABLE 1 
DROP TABLE IF EXISTS `Department`;
CREATE TABLE IF NOT EXISTS `Department`
(
    DepartmentID   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(30) NOT NULL UNIQUE KEY
);

-- Add data Department - Bảng phòng ban
INSERT INTO Department(DepartmentName)
VALUES ('Marketing'),
       ('Sale'),
       ('Bảo vệ'),
       ('Nhân sự'),
       ('Kỹ thuật'),
       ('Tài chính'),
       ('Phó giám đốc'),
       ('Giám đốc'),
       ('Tài vụ'),
       ('Kế toán');

-- create table 2: Posittion - Bảng chức danh
DROP TABLE IF EXISTS Position;
CREATE TABLE IF NOT EXISTS `Position`
(
    PositionID   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    PositionName ENUM ('Dev','Test','Scrum Master','PM', 'Mentor', 'Supporter','Leader') NOT NULL UNIQUE KEY
);

-- Add data position
INSERT INTO Position (PositionName)
VALUES ('Dev'),
       ('Test'),
       ('Scrum Master'),
       ('Supporter'),
       ('Leader'),
       ('Mentor'),
       ('PM');

-- create table 3: Account -
DROP TABLE IF EXISTS `Account`;
CREATE TABLE IF NOT EXISTS `Account`
(
    AccountID    INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Email        VARCHAR(50)      NOT NULL UNIQUE KEY,
    Username     VARCHAR(50)      NOT NULL UNIQUE KEY,
    FullName     VARCHAR(50)     NOT NULL,
    DepartmentID INT UNSIGNED NOT NULL,
    PositionID   INT UNSIGNED NOT NULL,
    CreateDate   DATETIME
#     FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID) ON DELETE NO ACTION,
#     FOREIGN KEY (PositionID) REFERENCES `Position` (PositionID)
);

-- insert Data Account
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (1, 'cdansey0', 'Calv Dansey', 'cdansey0@boston.com', 9, 4, '2021-02-19');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (2, 'erounsefell1', 'Eloise Rounsefell', 'erounsefell1@etsy.com', 8, 7, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (3, 'bdunrige2', 'Brod Dunrige', 'bdunrige2@seattletimes.com', 8, 4, '2020-07-06');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (4, 'vhartropp3', 'Vincent Hartropp', 'vhartropp3@china.com.cn', 3, 6, '2021-02-17');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (5, 'ccoolahan4', 'Claudio Coolahan', 'ccoolahan4@washingtonpost.com', 5, 2, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (6, 'bhuxtable5', 'Boigie Huxtable', 'bhuxtable5@xing.com', 5, 7, '2020-05-04');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (7, 'mswaile6', 'Mattias Swaile', 'mswaile6@liveinternet.ru', 5, 3, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (8, 'febunoluwa7', 'Fernande Ebunoluwa', 'febunoluwa7@desdev.cn', 4, 1, '2021-01-16');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (9, 'gsextone8', 'Gabrila Sextone', 'gsextone8@rediff.com', 8, 3, '2020-12-23');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (10, 'mitzkov9', 'Mabelle Itzkov', 'mitzkov9@cam.ac.uk', 3, 7, '2021-01-21');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (11, 'hmacgorleya', 'Hildagard MacGorley', 'hmacgorleya@list-manage.com', 9, 6, '2020-09-08');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (12, 'mblinckob', 'Margalit Blincko', 'mblinckob@yolasite.com', 6, 5, '2020-06-05');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (13, 'rhumphrisc', 'Roarke Humphris', 'rhumphrisc@lycos.com', 9, 1, '2021-01-08');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (14, 'tstoterd', 'Tonya Stoter', 'tstoterd@cbc.ca', 1, 2, '2020-11-29');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (15, 'zvenne', 'Zara Venn', 'zvenne@hc360.com', 1, 2, '2020-08-29');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (16, 'ocaseleyf', 'Ofilia Caseley', 'ocaseleyf@unc.edu', 7, 2, '2020-09-28');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (17, 'kfrostdickg', 'Kattie Frostdick', 'kfrostdickg@ihg.com', 5, 1, '2020-11-13');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (18, 'ghazeldeneh', 'Giulia Hazeldene', 'ghazeldeneh@google.es', 3, 7, '2020-05-18');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (19, 'tstichalli', 'Tully Stichall', 'tstichalli@bing.com', 2, 6, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (20, 'ewittj', 'Ernestus Witt', 'ewittj@ocn.ne.jp', 2, 3, '2021-03-29');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (21, 'cvarfalameevk', 'Clara Varfalameev', 'cvarfalameevk@ftc.gov', 4, 6, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (22, 'bjoveyl', 'Babbette Jovey', 'bjoveyl@census.gov', 10, 5, '2020-04-19');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (23, 'anassaum', 'Antonietta Nassau', 'anassaum@ted.com', 7, 7, '2021-03-18');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (24, 'cbarabischn', 'Craggy Barabisch', 'cbarabischn@prnewswire.com', 5, 5, '2020-10-17');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (25, 'rsinnato', 'Ruperto Sinnat', 'rsinnato@merriam-webster.com', 5, 2, '2021-01-05');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (26, 'gmacleesep', 'Genny MacLeese', 'gmacleesep@surveymonkey.com', 3, 6, '2020-10-16');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (27, 'yhoundsomq', 'Yasmin Houndsom', 'yhoundsomq@facebook.com', 9, 3, '2020-06-29');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (28, 'rgrisenthwaiter', 'Rudolfo Grisenthwaite', 'rgrisenthwaiter@altervista.org', 1, 4, '2021-02-17');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (29, 'nduigeds', 'Norina Duiged', 'nduigeds@webnode.com', 6, 4, '2020-08-07');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (30, 'gohmst', 'Glynda Ohms', 'gohmst@mit.edu', 6, 3, '2020-05-17');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (31, 'sbackhouseu', 'Sallee Backhouse', 'sbackhouseu@sfgate.com', 4, 1, '2020-04-25');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (32, 'kgroobyv', 'Kacey Grooby', 'kgroobyv@europa.eu', 6, 4, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (33, 'stippertonw', 'Sallyanne Tipperton', 'stippertonw@plala.or.jp', 10, 1, '2020-08-24');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (34, 'bcoweyx', 'Bryn Cowey', 'bcoweyx@answers.com', 3, 7, '2020-11-29');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (35, 'pradkey', 'Pedro Radke', 'pradkey@umn.edu', 8, 1, '2021-03-17');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (36, 'rdevonz', 'Rikki Devon', 'rdevonz@eepurl.com', 9, 6, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (37, 'csangwine10', 'Clemmy Sangwine', 'csangwine10@hc360.com', 2, 6, '2020-07-22');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (38, 'ljina11', 'Leah Jina', 'ljina11@elpais.com', 9, 5, '2021-03-16');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (39, 'btrumpeter12', 'Barney Trumpeter', 'btrumpeter12@vkontakte.ru', 5, 4, '2021-03-10');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (40, 'hhanigan13', 'Haskel Hanigan', 'hhanigan13@over-blog.com', 2, 6, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (41, 'aensley14', 'Abby Ensley', 'aensley14@jiathis.com', 5, 7, '2020-08-26');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (42, 'rlifsey15', 'Reinhold Lifsey', 'rlifsey15@flavors.me', 2, 2, '2020-07-05');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (43, 'pbycraft16', 'Paddie Bycraft', 'pbycraft16@lycos.com', 6, 6, '2020-11-14');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (44, 'cinworth17', 'Carver Inworth', 'cinworth17@ucla.edu', 4, 7, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (45, 'mliddyard18', 'Marj Liddyard', 'mliddyard18@simplemachines.org', 10, 1, '2020-11-04');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (46, 'mgrishelyov19', 'Mathias Grishelyov', 'mgrishelyov19@china.com.cn', 1, 7, '2021-02-07');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (47, 'wgarlant1a', 'Werner Garlant', 'wgarlant1a@cnn.com', 8, 3, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (48, 'croyle1b', 'Coreen Royle', 'croyle1b@youtube.com', 7, 1, '2020-05-24');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (49, 'bdebill1c', 'Burr Debill', 'bdebill1c@wordpress.org', 7, 3, '2021-03-29');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (50, 'atant1d', 'Anica Tant', 'atant1d@icq.com', 10, 1, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (51, 'emorefield1e', 'Ellerey Morefield', 'emorefield1e@census.gov', 10, 2, '2020-06-18');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (52, 'lscanes1f', 'Lia Scanes', 'lscanes1f@nps.gov', 6, 5, '2020-09-11');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (53, 'kballham1g', 'Kary Ballham', 'kballham1g@dailymotion.com', 9, 5, '2020-11-01');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (54, 'creeves1h', 'Carma Reeves', 'creeves1h@wiley.com', 9, 1, '2021-01-25');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (55, 'vcharlick1i', 'Valera Charlick', 'vcharlick1i@about.me', 5, 7, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (56, 'afrostdicke1j', 'Audy Frostdicke', 'afrostdicke1j@geocities.jp', 4, 6, '2020-08-24');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (57, 'dwheelan1k', 'Demott Wheelan', 'dwheelan1k@ocn.ne.jp', 8, 5, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (58, 'groffey1l', 'Gian Roffey', 'groffey1l@bravesites.com', 1, 4, '2020-08-29');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (59, 'npenk1m', 'Norean Penk', 'npenk1m@storify.com', 5, 1, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (60, 'dgartan1n', 'Dane Gartan', 'dgartan1n@walmart.com', 5, 1, '2021-03-13');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (61, 'kcuddehy1o', 'Kippy Cuddehy', 'kcuddehy1o@virginia.edu', 2, 5, '2020-09-05');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (62, 'ecreggan1p', 'Etta Creggan', 'ecreggan1p@multiply.com', 6, 1, '2020-05-09');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (63, 'gpanther1q', 'Gael Panther', 'gpanther1q@flavors.me', 10, 7, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (64, 'ebillion1r', 'Elvira Billion', 'ebillion1r@google.com.hk', 7, 3, '2020-05-01');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (65, 'agrinishin1s', 'Ariadne Grinishin', 'agrinishin1s@independent.co.uk', 10, 3, '2020-06-11');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (66, 'hdraper1t', 'Helenelizabeth Draper', 'hdraper1t@mail.ru', 8, 3, '2020-04-27');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (67, 'jway1u', 'Jennee Way', 'jway1u@studiopress.com', 1, 7, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (68, 'abartlomiej1v', 'Andria Bartlomiej', 'abartlomiej1v@mysql.com', 6, 4, '2020-09-27');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (69, 'tpilfold1w', 'Tull Pilfold', 'tpilfold1w@senate.gov', 10, 6, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (70, 'dhandrek1x', 'Dov Handrek', 'dhandrek1x@reddit.com', 4, 1, '2020-08-13');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (71, 'rbrookhouse1y', 'Roslyn Brookhouse', 'rbrookhouse1y@sogou.com', 1, 6, '2020-08-11');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (72, 'nbourley1z', 'Nappy Bourley', 'nbourley1z@geocities.com', 7, 3, '2020-09-28');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (73, 'dcosser20', 'Davine Cosser', 'dcosser20@arizona.edu', 6, 3, '2021-01-06');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (74, 'hcleft21', 'Harrison Cleft', 'hcleft21@google.it', 4, 1, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (75, 'cgoodge22', 'Camala Goodge', 'cgoodge22@google.nl', 1, 4, '2020-12-14');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (76, 'llownie23', 'Layton Lownie', 'llownie23@webnode.com', 5, 7, '2021-03-10');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (77, 'brawcliffe24', 'Brunhilde Rawcliffe', 'brawcliffe24@sciencedirect.com', 9, 4, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (78, 'fwoolland25', 'Florenza Woolland', 'fwoolland25@squarespace.com', 4, 4, '2021-03-20');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (79, 'fbillin26', 'Fayre Billin', 'fbillin26@amazon.com', 2, 3, '2020-05-21');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (80, 'yheld27', 'Yule Held', 'yheld27@yale.edu', 6, 5, '2021-01-19');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (81, 'hlytell28', 'Hanni Lytell', 'hlytell28@unc.edu', 3, 6, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (82, 'wjasiak29', 'Whitaker Jasiak', 'wjasiak29@newsvine.com', 1, 1, '2020-06-29');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (83, 'aanand2a', 'Augy Anand', 'aanand2a@sitemeter.com', 7, 7, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (84, 'yruddiforth2b', 'Yuma Ruddiforth', 'yruddiforth2b@cam.ac.uk', 6, 3, '2021-02-01');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (85, 'sgors2c', 'Sallee Gors', 'sgors2c@altervista.org', 3, 7, '2020-08-30');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (86, 'thembrow2d', 'Tracy Hembrow', 'thembrow2d@parallels.com', 7, 2, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (87, 'fredparth2e', 'Francesca Redparth', 'fredparth2e@sphinn.com', 7, 3, '2020-11-13');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (88, 'kkeson2f', 'Karoly Keson', 'kkeson2f@flickr.com', 5, 3, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (89, 'sdelaprelle2g', 'Sancho Delaprelle', 'sdelaprelle2g@geocities.com', 6, 4, '2021-03-19');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (90, 'dleahair2h', 'Den Leahair', 'dleahair2h@phoca.cz', 10, 2, '2020-12-09');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (91, 'dbackes2i', 'Daniele Backes', 'dbackes2i@e-recht24.de', 4, 6, '2020-10-10');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (92, 'ktyers2j', 'Kelbee Tyers', 'ktyers2j@webnode.com', 1, 5, '2020-04-19');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (93, 'mpenswick2k', 'Merwyn Penswick', 'mpenswick2k@craigslist.org', 4, 6, '2020-10-24');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (94, 'lhuckel2l', 'Loy Huckel', 'lhuckel2l@paginegialle.it', 10, 5, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (95, 'braybould2m', 'Bendix Raybould', 'braybould2m@examiner.com', 5, 2, '2021-01-22');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (96, 'eturgoose2n', 'Ellette Turgoose', 'eturgoose2n@java.com', 3, 7, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (97, 'mdearsley2o', 'Maitilde Dearsley', 'mdearsley2o@google.co.jp', 4, 6, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (98, 'gshutt2p', 'Gracia Shutt', 'gshutt2p@hostgator.com', 7, 6, null);
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (99, 'cwhitington2q', 'Chane Whitington', 'cwhitington2q@nymag.com', 6, 1, '2020-05-13');
insert into Account (AccountID, Username, FullName, Email, DepartmentID, PositionID, CreateDate) values (100, 'anutton2r', 'Alick Nutton', 'anutton2r@indiegogo.com', 2, 5, '2020-12-24');
drop table `group`;
CREATE TABLE IF NOT EXISTS `group` (
	groupID		INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    groupName	NVARCHAR(50) UNIQUE KEY,
    creatorID	TINYINT UNSIGNED NOT NULL,
    createDate	DATETIME
);

INSERT INTO `group`(groupName,  creatorID, createDate )
VALUES			   ('Nhóm 1'  ,      1     , '2021-04-12'), 
                   ('Nhóm 2'  ,      2     , '2021-04-13'),
                   ('Nhóm 3'  ,      3     , '2021-04-16'),
				   ('Nhóm 4'  ,      4     , '2021-04-19'),
				   ('Nhóm 5'  ,      6     , '2021-04-19'),
				   ('Nhóm 6'  ,      7     , '2021-04-19'),
				   ('Nhóm 7'  ,      8     , '2021-04-19'),
				   ('Nhóm 8'  ,      5     , '2021-04-19'),
				   ('Nhóm 9'  ,      9     , '2021-04-19'),
				   ('Nhóm 10' ,      10    , '2021-04-21');
/*DELETE 
FROM `group`
WHERE `group_name` = 'Nhóm 11'; */
select * from `group`;
CREATE TABLE groupAccount (
	groupID	TINYINT UNSIGNED NOT NULL,
    AccountID	TINYINT UNSIGNED NOT NULL,
    joinDate	DATETIME DEFAULT NOW()
    -- FOREIGN KEY(group_id) REFERENCES `group`(group_id),
    -- FOREIGN KEY(account_id) REFERENCES `account`(account_id)
);
INSERT INTO groupAccount( groupID , AccountID,  joinDate )
VALUES			         (	3		,     6     , '2021-04-16'), 
                         (	3		,     5     , '2021-04-18'),
                         (	5		,     6     , '2021-04-19'),
				         (	6		,     1     , '2021-04-20'),
				         (	6		,     1     , '2021-04-20'),
				         (	1		,     8     , '2021-04-20'),
				         (	6		,     9     , '2021-04-20'),
				         (	10		,     9     , '2021-04-20'),
				         (	6		,     10    , '2021-04-20'),
						 (	1		,     99    , '2020-04-30'),
						 (	1		,     36    , '2019-06-20'),
                         (	1		,     27    , '2020-03-19'),
                         (	1		,     9     , '2021-09-17'),
                         (	2		,     22    , '2020-05-15'),
                         (	2		,     13    , '2019-05-28'),
                         (	9		,     88    , '2020-08-28'),
				         (	9		,     3     , '2021-04-30');

DROP TABLE IF EXISTS typeQuestion;
CREATE TABLE typeQuestion (
	typeID		TINYINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    typeName	ENUM('Essay','Multiple-Choice') NOT NULL
);
INSERT INTO typeQuestion( typeID , typeName          )
VALUES			         (	1		, 'Essay'           ), 
                         (	2		, 'Multiple-Choice' );

DROP TABLE IF EXISTS categoryQuestion;
CREATE TABLE  categoryQuestion (
	categoryID		TINYINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    categoryName	VARCHAR(50) NOT NULL UNIQUE KEY
);  
INSERT INTO categoryQuestion(categoryName)
VALUES			             (	 'Java'    ), 
                             (	 'ASP.NET' ),
                             (	 'SQL'     ),
                             (	 'ADO.NET' ),
                             (	 'Python'  ),
                             (	 'C++'     ),
				             (   'C Sharp' ),
				             (   'Postman' ),
				             (   'PHP'     ),
				             (	 'Ruby'    );

DROP TABLE IF EXISTS question;
CREATE TABLE question (
	questionID		TINYINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    content			NVARCHAR(150) NOT NULL,
    categoryID		TINYINT UNSIGNED NOT NULL,
    typeID      	TINYINT UNSIGNED NOT NULL,
    creatorID		TINYINT UNSIGNED NOT NULL,
    createDate		DATETIME DEFAULT NOW()
    -- FOREIGN KEY(category_id) REFERENCES category_question(category_id),
    -- FOREIGN KEY(type_id) REFERENCES type_question(type_id)
);
INSERT INTO question( content         , categoryID , typeID, creatorID, createDate )
VALUES			    ('Câu hỏi Java'   ,     1       ,    1   ,    1      ,'2021-05-12' ), 
				    ('Câu hỏi ADO.NET',     4       ,    2   ,    2      ,'2021-05-13' ),
					('Câu hỏi PHP'    ,     9       ,    2   ,    10     ,'2021-05-14' ),
					('Câu hỏi Ruby'   ,     10      ,    1   ,    10     ,'2021-05-15' ),
					('Câu hỏi Postman',     8       ,    2   ,    5      ,'2021-05-16' ),
					('Câu hỏi C++'    ,     6       ,    2   ,    5      ,'2021-05-16' ),
					('Câu hỏi C Sharp',     7       ,    2   ,    6      ,'2021-05-16' ),
					('Câu hỏi Python' ,     5       ,    2   ,    5      ,'2021-05-16' ),
					('Câu hỏi ASP.NET',     2       ,    2   ,    7      ,'2021-05-16' ),
                    ('Câu hỏi SQL'    ,     3       ,    1   ,    9      ,'2021-05-17' );

DROP TABLE IF EXISTS answer;
CREATE TABLE answer (
	answerID	TINYINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    content		NVARCHAR(150) NOT NULL,
    questionID	TINYINT UNSIGNED NOT NULL,
    isCorrect	BIT DEFAULT 1
    -- FOREIGN KEY(question_id) REFERENCES question(question_id)
);

INSERT INTO  answer (content     , questionID ) 
VALUES			    ('Trả lời 1' ,     3       ),
				    ('Trả lời 2' ,     5       ),
					('Trả lời 3' ,     1       ),
					('Trả lời 4' ,     3       ),
					('Trả lời 5' ,     6       );

INSERT INTO  answer (content     , questionid , isCorrect)
VALUES			    ('Trả lời 6' ,     6       ,    0      ),
					('Trả lời 7' ,     9       ,    0      ),
					('Trả lời 8' ,     6       ,    0      ),
					('Trả lời 9' ,     8       ,    0      ),
                    ('Trả lời 10',     4       ,    0      );

DROP TABLE IF EXISTS exam;
CREATE TABLE exam (
	exam_id		TINYINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `code`		CHAR(20) NOT NULL,
    title		NVARCHAR(50) NOT NULL,
    category_id TINYINT UNSIGNED NOT NULL,
    duration	TINYINT UNSIGNED NOT NULL,
    creator_id	TINYINT UNSIGNED NOT NULL,
    create_date DATETIME DEFAULT NOW()
    -- FOREIGN KEY(category_id) REFERENCES category_question(category_id)
);
INSERT INTO exam(`code` ,  title , category_id, duration, creator_id, create_date  )
VALUES		    ('A_1'  , 'Đề 1' ,    5       ,    60   ,     3     ,'2021-06-12' ), 
				('A_2'  , 'Đề 2 ',    4       ,    90   ,     4     ,'2021-06-13' ),
				('A_3'  , 'Đề 3' ,    7       ,    120  ,     7     ,'2021-06-14' ),
				('A_4'  , 'Đề 4' ,    1       ,    120  ,     7     ,'2021-06-15' ),
				('A_5'  , 'Đề 5' ,    10      ,    30   ,     1     ,'2021-06-16' ),
				('A_6'  , 'Đề 6' ,    4       ,    90   ,     2     ,'2021-06-17' ),
				('A_7'  , 'Đề 7' ,    9       ,    45   ,     9     ,'2021-06-17' ),
				('A_8'  , 'Đề 8' ,    4       ,    90   ,     10    ,'2021-06-17' ),
				('A_9'  , 'Đề 9' ,    8       ,    90   ,     6     ,'2021-06-17' ),
                ('A_10' , 'Đề 10',    3       ,    45   ,     8     ,'2021-06-17' );

UPDATE exam SET create_date = '2019-02-12' WHERE (exam_id = '1');

DROP TABLE IF EXISTS exam_question;
CREATE TABLE examquestion (
	examid		TINYINT UNSIGNED NOT NULL,
    questionid TINYINT UNSIGNED NOT NULL
	-- FOREIGN KEY(exam_id) REFERENCES exam(exam_id),
    -- FOREIGN KEY(question_id) REFERENCES question(question_id)
);
INSERT INTO examquestion(examid , questionid)
VALUES			         (	 1    ,    1       ), 
                         (	 2	  ,    3       ),
					     (	 3	  ,    6       ),
					     (   4	  ,    10      ),
						 (	 5	  ,    3       ),
						 (	 6	  ,    5       ),
						 (	 7	  ,    5       ),
						 (	 8	  ,    9       ),
						 (	 9	  ,    2       ),
						 (	 10	  ,    5       );


-- CÂU HỎI 1 : Viết lệnh để lấy ra danh sách nhân viên và thông tin phòng ban của họ
SELECT a.fullname, d.departmentname
FROM `account` a 
JOIN department d
ON a.departmentid = d.departmentid;

-- CÂU HỎI 2 : Viết lệnh để lấy ra thông tin các account được tạo sau ngày 20/12/2010
SELECT a.*, d.departmentname
FROM `account` a 
JOIN department d
ON a.departmentid = d.departmentid
WHERE a.createdate > '2010-12-20';

-- CÂU HỎI 3 : Viết lệnh để lấy ra tất cả các Developer 
SELECT a.fullname, p.positionname
FROM position p 
JOIN `account` a 
ON p.positionID = a.positionID 
WHERE p.positionname = 'Dev';

-- CÂU HỎI 4 : Viết lệnh để lấy ra danh sách các phòng ban có >3 nhân viên
SELECT 
FROM department d 
JOIN `account` a 
ON d.departmentid = a.departmentid 
HAVING count('a.account'>3) ;

-- Câu 11 : Thống kê mỗi phòng ban có bao nhiêu dev, test, scrum master, PM,...
SELECT d.DepartmentName, p.positionname, count(*) as 'số lượng nhân viên'
FROM `account` a 
CROSS JOIN department d ON d.departmentID = a.departmentID 
JOIN position p ON a.positionID = p.positionID
/*WHERE d.departmentid = 8*/
GROUP BY a.positionID, d.departmentid ;

 /* Caau 12 : Lấy thông tin chi tiết của câu hỏi bao gồm: thông tin cơ bản của
question, loại câu hỏi, ai là người tạo ra câu hỏi, câu trả lời là gì, ... */
 SELECT ac.accountid, q.questionID, a.content
 FROM answer a 
 JOIN question q USING (questionID)
 JOIN `account` ac ON q.creatorid = ac.accountid;








