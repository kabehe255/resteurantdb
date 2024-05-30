create database resteurant;

use resteurant;
create table custumers(
    CustumerID int PRIMARY KEY AUTO_INCREMENT,
    Name varchar(30),
    Email varchar(30),
    PhoneNo varchar(15),
    Adress varchar(25)
);

insert into custumers(CustumerID, Name, Email, PhoneNo, Adress) VALUES(null, 'aisha john', 'aishajohn@gmail.com', '0712345678', 'mbeya mjini'),
(null, 'juma hamis', 'jumahamis@gmail.com', '0745345615', 'uyole'),
(null, 'Fatma Hassan', 'fatmahassan@gmail.com', '0712345678', 'Mwenge'),
(null, 'John Doe', 'johndoe@gmail.com', '0755555555', 'Kijitonyama'),
(null, 'Jane Smith', 'janesmith@gmail.com', '0766666666', 'Sinza'),
(null, 'Ahmed Ali', 'ahmedali@gmail.com', '0733333333', 'Tabata'),
(null, 'Aisha Yusuf', 'aishayusuf@gmail.com', '0722222222', 'Kariakoo'),
(null, 'Peter Jackson', 'peterjackson@gmail.com', '0788888888', 'Upanga'),
(null, 'Sophia Kim', 'sophiakim@gmail.com', '0799999999', 'Buguruni'),
(null, 'Michael Johnson', 'michaeljohnson@gmail.com', '0700000000', 'Kilimanjaro'),
(null, 'Hawa Mohamed', 'hawamohamed@gmail.com', '0744444444', 'Mbezi'),
(null, 'David Williams', 'davidwilliams@gmail.com', '0754545454', 'Tegeta'),
(null, 'Eva Brown', 'evabrown@gmail.com', '0767676767', 'Magomeni'),
(null, 'James Davis', 'jamesdavis@gmail.com', '0727272727', 'Kimara'),
(null, 'Linda Miller', 'lindamiller@gmail.com', '0737373737', 'Ubungo'),
(null, 'Samuel Taylor', 'samueltaylor@gmail.com', '0789898989', 'Gongo la Mboto'),
(null, 'Benjamin Lee', 'benjaminlee@example.com', '0721098765', 'Kimara'),
(null, 'Emma White', 'emmawhite@example.com', '0710987654', 'Kibaha'),
(null, 'Noah Harris', 'noahharris@example.com', '0709876543', 'Tabata'),
(null, 'Isabella Martin', 'isabellamartin@example.com', '0798765432', 'Segerea'),
(null, 'Liam Clark', 'liamclark@example.com', '0787654321', 'Mwananyamala'),
(null, 'Mia Lewis', 'mialewis@example.com', '0776543210', 'Kawe'),
(null, 'Alexander Walker', 'alexanderwalker@example.com', '0765432109', 'Msasani'),
(null, 'Charlotte Hall', 'charlottehall@example.com', '0754321098', 'Magomeni'),
(null, 'William Young', 'williamyoung@example.com', '0743210987', 'Goba');

use resteurant;

CREATE TABLE orders(
    OrderID int PRIMARY KEY AUTO_INCREMENT,
    OrderTime datetime,
    TotalAmount decimal(10.2),
    custumerID int, 
    FOREIGN KEY (custumerID) REFERENCES custumers(custumerID)
);


USE resturant;

CREATE TABLE dishes(
	DishesID INT(6) PRIMARY KEY AUTO_INCREMENT,
	Name VARCHAR(20),
	Description VARCHAR(50), 
	Price FLOAT(11),
	Categories VARCHAR(50)
);

USE resteurant;

CREATE TABLE orderDetails(
	OrderDetailID INT(6) PRIMARY KEY AUTO_INCREMENT,
	Quantity VARCHAR(20),
	Subtotal INT(10),
	OrderID INT(6)
);

USE resteurant;

INSERT INTO dishes(DishesID,Name,Description,Price,Categories) VALUES
(NULL, 'pilau', 'pilau nyama', '4500.37', 'uhuru'),
(NULL, 'birian', 'birian kuku', '3000.78', 'uhuru'),
(NULL, 'chipsi', 'chipsi mshikaki', '6500.00', 'uhuru');

use resteurant;
INSERT INTO orders(OrderID, OrderTime, TotalAmount, custumerID) VALUES (1,now(),3000.45,1),
(2,now(),3000.45,2),
(3,now(),3000.45,3),
(4,now(),3000.45,4);