CREATE DATABASE IF NOT EXISTS pretest_2;
USE pretest_2;

DROP TABLE IF EXISTS `Customer`;
CREATE TABLE IF NOT EXISTS `Customer`
(
    CustomerID TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `Name`     VARCHAR(50)        NOT NULL,
    Phone      VARCHAR(50) UNIQUE NOT NULL,
    Email      VARCHAR(50),
    Address    VARCHAR(100),
    Note       VARCHAR(200)
);

DROP TABLE IF EXISTS `Car`;
CREATE TABLE IF NOT EXISTS `Car`
(
    CarID  TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Maker  ENUM ('TOYOTA','HONDA','NISSAN'),
    Model  VARCHAR(50) NOT NULL,
    `Year` SMALLINT    NOT NULL,
    Color  VARCHAR(50),
    Note   VARCHAR(200)
);

DROP TABLE IF EXISTS `Car_Order`;
CREATE TABLE IF NOT EXISTS `Car_Order`
(
    OrderID         MEDIUMINT AUTO_INCREMENT PRIMARY KEY,
    CustomerID      TINYINT UNSIGNED NOT NULL,
    CarID           TINYINT UNSIGNED NOT NULL,
    Amount          SMALLINT   DEFAULT 1,
    SalePrice       DOUBLE           NOT NULL,
    OrderDate       DATE             NOT NULL,
    DeliveryDate    DATE             NOT NULL,
    DeliveryAddress VARCHAR(100),
    Status          TINYINT(2) DEFAULT 0,
    Note            VARCHAR(500)
);
/* ====================  CÂU HỎI SỐ 1 ======================== */ 
INSERT INTO Customer (`Name`, Phone, Email, Address, Note)
VALUES ('Minh Dat', '0972291907', 'minhdat@vit.com', 'Ha Noi', 'Nguoi dung moi'),
       ('Hai Yen', '0396335560', 'haiyen@vit.com', 'Hai Duong', 'Nguoi dung moi'),
       ('Bao Chau', '0986089683', 'baochau@vit.com', 'Quang Ninh', 'Nguoi dung moi'),
       ('Minh Khoi', '098285112', 'minhkhoi@vit.com', 'Ha Long', 'Nguoi dung moi'),
       ('Gia Bao', '0986959975', 'giabao@vit.com', 'Thai Binh', 'Nguoi dung moi');

INSERT INTO Car (Maker, Model, `Year`, Color, Note)
VALUES ('TOYOTA', 'Land Cruiser', 2020, 'black', NULL),
       ('HONDA', 'CRV', 2020, 'red', NULL),
       ('HONDA', 'Civic', 2019, 'black', NULL),
       ('NISSAN', 'Teana', 2018, 'grey', NULL);

INSERT INTO Car_Order(CustomerID, CarID, Amount, SalePrice, OrderDate, DeliveryDate, DeliveryAddress, `Status`, Note)
VALUES (1, 2, 1, 1200000000, '2021-01-05', '2021-04-04', 'Ha Noi', 1, 'Giao hang tai Showroom'),
       (2, 1, 1, 3200000000, '2021-04-01', '2021-05-01', 'Bac Ninh', 0, 'Giao hang tai nha'),
       (3, 3, 1, 900000000, '2020-11-05', '2020-12-01', 'Ha Noi', 0, 'Giao hang tai Showroom'),
       (5, 3, 2, 900000000, '2021-03-01', '2021-02-18', 'Ha Noi', 1, 'Giao hang tai Showroom'),
       (1, 1, 3, 900000000, '2021-03-01', '2021-03-03', 'Ha Noi', 1, 'Giao hang tai Showroom'),
       (4, 4, 1, 1000000000, '2021-01-02', '2021-01-15', 'Bac Giang', 2, 'Giao hang tai Showroom');
       
       
/* ============================= CÂU HỎI SỐ 2 ========================= */ 
/*Lấy ra thông tin của khách hàng: tên, số lượng oto khách hàng đã mua và sắp sếp tăng dần theo số lượng oto đã mua. */

SELECT c.name, sum(c_o.amount) AS 'So xe da mua'
FROM Customer c
JOIN Car_Order c_o USING (customerID) 
GROUP BY c.name
ORDER BY sum(c_o.amount);

/* ============================= CÂU HỎI SỐ 3 ========================= */ 
/*Viết hàm (không có parameter) trả về tên hãng sản xuất đã bán được nhiều oto nhất trong năm nay*/
set global log_bin_trust_function_creators = 1;
DROP FUNCTION IF EXISTS best_seller;
DELIMITER $$
CREATE FUNCTION best_seller () RETURNS ENUM ('TOYOTA','HONDA','NISSAN')
BEGIN
	DECLARE brand ENUM ('TOYOTA','HONDA','NISSAN');
    SELECT cr.maker INTO brand
    FROM Car_Order C_O JOIN Car cr
    ON c_o.carID = cr.carID 
    WHERE year(deliveryDate) = year(now()) AND c_o.`status` = 1
    GROUP BY cr.maker 
    ORDER BY sum(c_o.amount) 
    LIMIT 1;
    
	RETURN	brand ;
END $$
DELIMITER ;

SELECT best_seller() ;

/* ============================= CÂU HỎI SỐ 4 ========================= */ 
/* . Viết 1 thủ tục (không có parameter) để xóa các đơn hàng đã bị hủy của những năm trước
 In ra số lượng bản ghi đã bị xóa. */


 set global log_bin_trust_function_creators = 1;
 DROP PROCEDURE IF EXISTS delete_canceled_order;
DELIMITER $$
CREATE PROCEDURE delete_canceled_order () 
BEGIN
	SELECT count(orderID)
    FROM car_order 
    WHERE `Status` = 2
    AND year(orderDate) < year(now());

	DELETE 
    FROM car_order
	WHERE `Status` = 2 AND year(orderDate) < year(now());
END $$ 
DELIMITER ;

CALL delete_canceled_order ();

/* ============================= CÂU HỎI SỐ 5 ========================= */ 
/*Viết 1 thủ tục (có CustomerID parameter) để in ra thông tin của các đơn
hàng đã đặt hàng bao gồm: tên của khách hàng, mã đơn hàng, số lượng oto
và tên hãng sản xuất*/

DROP PROCEDURE IF EXISTS order_infor;
DELIMITER $$
CREATE PROCEDURE order_infor (IN cmID INT)
BEGIN 
	SELECT cm.name, co.orderID, co.amount, cr.maker, cr.model
    FROM car_order co
    JOIN car cr ON  co.carID = cr.carid
    JOIN customer cm ON co.customerID = cm.customerID 
    WHERE co.customerID = cmID AND co.status = 0;
	END $$
DELIMITER ; 

CALL order_infor (2);
 
 /* ============================= CÂU HỎI SỐ 6 ========================= */ 
/*Viết trigger để tránh trường hợp người dụng nhập thông tin không hợp lệ 
vào database (DeliveryDate < OrderDate + 15)*/
DROP TRIGGER IF EXISTS deliverydate_constrain;
DELIMITER $$
CREATE TRIGGER deliverydate_constrain
BEFORE INSERT ON car_order
FOR EACH ROW 
BEGIN 
IF date(new.deliveryDate) < date(new.orderDate) + 15 THEN 
SIGNAL SQLSTATE '12345'
    SET MESSAGE_TEXT = 'Phải trước ngày order 15 ngày, THỬ LẠI ĐIIIII';
    END IF ;
    END $$
DELIMITER ;
insert into car_Order(CustomerID, CarID, Amount, SalePrice, OrderDate, DeliveryDate, DeliveryAddress, `Status`, Note)
VALUES (1, 2, 1, 1200000000, '2021-03-01', '2021-05-30', 'Ha Noi', 1, 'Giao hang tai Showroom');