CREATE DATABASE ecommerce_db;
DROP DATABASE ecommerce_db;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- IMPLEMENTATION
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- USER TABLE
CREATE TABLE `user` (
  `user_id` INT(6) PRIMARY KEY AUTO_INCREMENT,
  `email` VARCHAR(50) NOT NULL,
  `password` VARCHAR(50) NOT NULL,
  `first_name` VARCHAR(20) NOT NULL,
  `last_name` VARCHAR(20) NOT NULL,
  `screen_name` VARCHAR(15) NOT NULL,
  `phone_number` VARCHAR(20) NOT NULL,
  `DOB` DATE NOT NULL,
  `sex` ENUM('M', 'F'),
  `about_me` VARCHAR(255),
  `level` TINYINT NOT NULL,
  `points` SMALLINT NOT NULL
) AUTO_INCREMENT = 10;

INSERT INTO `user` (`email`, `password`, `first_name`, `last_name`, `screen_name`, `phone_number`, `DOB`, `sex`, `about_me`, `level`, `points`)
VALUES 
('jack@gmail.com', MD5('jack2005'), 'Jack', 'Jones', 'jones1', '+44 68 4529 6571', '2000-05-01', 'M', 'I am Jack!', 1, 1520),
('emma@outlook.com', MD5('emma1990'), 'Emma', 'Smith', 'emma2', '+44 75 1234 5678', '1990-08-15', 'F', 'I am Emma!', 3, 2800),
('john@gmail.com', MD5('john1965'), 'John', 'Doe', 'john3', '+44 71 9876 5432', '1985-11-20', 'M', 'I am John!', 2, 1750),
('sara@gmail.com', MD5('sara1987'), 'Sara', 'Brown', 'sara4', '+44 79 8765 4321', '1987-02-10', 'F', 'I am Sara!', 4, 3200),
('mike@outlook.com', MD5('mike1995'), 'Mike', 'Taylor', 'mike5', '+44 76 2345 6789', '1995-06-25', 'M', 'I am Mike!', 2, 2000),
('olivia@yahoo.com', MD5('olivia1992'), 'Olivia', 'Robinson', 'olivia6', '+44 73 5432 1098', '1992-09-18', 'F', 'I am Olivia!', 3, 2400),
('alex@gmail.com', MD5('alex1980'), 'Alex', 'Wilson', 'alex7', '+44 74 8765 4321', '1980-12-03', 'M', 'I am Alex!', 5, 3800),
('lily@gmail.com', MD5('lily2002'), 'Lily', 'Clark', 'lily8', '+44 70 9876 5432', '2002-04-12', 'F', 'I am Lily!', 1, 1200),
('david@outlook.com', MD5('david1978'), 'David', 'Harris', 'david9', '+44 77 6543 2109', '1978-07-08', 'M', 'I am David', 4, 3000),
('laura@gmail.com', MD5('laura1993'), 'Laura', 'Miller', 'laura10', '+44 78 3210 9876', '1993-03-22', 'F', 'I am Laura!', 3, 2600),
('sam@gmail.com', MD5('sam1998'), 'Sam', 'Anderson', 'sam11', '+44 79 1234 5678', '1998-04-30', 'M', 'I am Sam!', 2, 1900),
('emily@yahoo.com', MD5('emily2000'), 'Emily', 'White', 'emily12', '+44 76 9876 5432', '2000-10-12', 'F', 'I am Emily!', 3, 2200),
('chris@gmail.com', MD5('chris1983'), 'Chris', 'Johnson', 'chris13', '+44 73 8765 4321', '1983-12-08', 'M', 'I am Chris!', 5, 3500),
('mia@outlook.com', MD5('mia1997'), 'Mia', 'Davis', 'mia14', '+44 74 2345 6789', '1997-07-25', 'F', 'I am Mia!', 2, 1800),
('ryan@gmail.com', MD5('ryan2001'), 'Ryan', 'Moore', 'ryan15', '+44 72 5432 1098', '2001-02-19', 'M', 'I am Ryan!', 4, 3100),
('eva@gmail.com', MD5('eva1989'), 'Eva', 'Martin', 'eva16', '+44 75 8765 4321', '1989-09-14', 'F', 'I am Eva!', 3, 2500),
('daniel@yahoo.com', MD5('daniel1975'), 'Daniel', 'Thompson', 'daniel17', '+44 70 9876 5432', '1975-11-05', 'M', 'I am Daniel!', 4, 2900),
('zoey@gmail.com', MD5('zoey2004'), 'Zoey', 'Baker', 'zoey18', '+44 77 6543 2109', '2004-03-08', 'F', 'I am Zoey!', 1, 1300),
('jason@gmail.com', MD5('jason1986'), 'Jason', 'Ward', 'jason19', '+44 78 3210 9876', '1986-06-17', 'M', 'I am Jason!', 5, 3700),
('sophie@outlook.com', MD5('sophie1991'), 'Sophie', 'Turner', 'sophie20', '+44 71 4321 0987', '1991-01-27', 'F', 'I am Sophie!', 2, 2000);

SELECT *
FROM `user`;

DROP TABLE `user`;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ADDRESS TABLE
CREATE TABLE `address` (
  `address_id` INT(6) PRIMARY KEY AUTO_INCREMENT,
  `user_id` INT(6) NOT NULL,
  `title` VARCHAR(30) NOT NULL,
  `country` VARCHAR(30) NOT NULL,
  `province` VARCHAR(30) NOT NULL,
  `city` VARCHAR(30) NOT NULL,
  `street` VARCHAR(30) NOT NULL,
  `building` VARCHAR(30) NOT NULL,
  `house_number` TINYINT NOT NULL,
  `company` VARCHAR(40) NOT NULL,
  `postcode` VARCHAR(20) NOT NULL,
  `additional_info` VARCHAR(100),
  FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`) ON DELETE CASCADE
) AUTO_INCREMENT = 100;

INSERT INTO `address` (`user_id`, `title`, `country`, `province`, `city`, `street`, `building`, `house_number`, `company`, `postcode`, `additional_info`)
VALUES
(10, 'Home', 'United Kingdom', 'England', 'London', 'Baker Street', '221B', 12, 'The Holmes Company', 'SW1A 1AA', 'Some additional information'),
(11, 'Apartment', 'United Kingdom', 'Scotland', 'Edinburgh', 'Royal Mile', '34C', 6, 'Scottish Highlands Ltd.', 'EH1 2PE', 'Some additional information'),
(12, 'Cottage', 'United Kingdom', 'Wales', 'Cardiff', 'Castle Street', '7A', 3, 'Dragon Crafts Ltd.', 'CF10 1BS', 'Some additional information'),
(13, 'Flat', 'United Kingdom', 'Northern Ireland', 'Belfast', 'Titanic Quarter', '15D', 4, 'Emerald Isle Exports', 'BT3 9DT', 'Some additional information'),
(14, 'House', 'United Kingdom', 'England', 'Manchester', 'Canal Street', '88', 9, 'Northern Soul Textiles', 'M1 3WD', 'Some additional information'),
(15, 'Mansion', 'United Kingdom', 'Scotland', 'Glasgow', 'Sauchiehall Street', '42', 11, 'Highland Whiskies Ltd.', 'G2 3JD', 'Some additional information'),
(16, 'Duplex', 'United Kingdom', 'England', 'London', 'Kensington High Street', 'The Royal', 8, 'London Elegance Ltd', 'W8 5NP', 'Some additional information'),
(17, 'Terraced House', 'United Kingdom', 'England', 'Birmingham', 'Jewellery Quarter', 'Gold Lane', 42, 'Midlands Goldsmiths', 'B18 6NF', 'Some additional information'),
(18, 'City Apartment', 'United Kingdom', 'England', 'Manchester', 'Deansgate', 'City Towers', 21, 'Northern Lights Realty', 'M3 4LY', 'Some additional information'),
(19, 'Rural Cottage', 'United Kingdom', 'England', 'Oxford', 'Countryside Lane', 'Rose Cottage', 7, 'Oxfordshire Florals', 'OX1 3BD', 'Some additional information'),
(20, 'Historic Townhouse', 'United Kingdom', 'England', 'Cambridge', 'Kings Parade', 'Cambridge Heritage', 18, 'Cambridge Antiquities', 'CB2 1SJ', 'Some additional information'),
(21, 'Studio Apartment', 'United Kingdom', 'England', 'Liverpool', 'Albert Dock', 'Waterfront Studios', 15, 'Mersey Artistry', 'L3 4AA', 'Some additional information'),
(22, 'Modern Loft', 'United Kingdom', 'England', 'Leeds', 'City Square', 'Skyline Lofts', 33, 'Yorkshire Innovations', 'LS1 1UR', 'Some additional information'),
(23, 'Garden Flat', 'United Kingdom', 'England', 'Bristol', 'Clifton Gardens', 'Green Oasis', 4, 'West Country Gardens', 'BS8 1BX', 'Some additional information'),
(24, 'Warehouse Conversion', 'United Kingdom', 'England', 'Newcastle', 'Quayside', 'Riverside Warehouse', 12, 'Newcastle Design Collective', 'NE1 3JE', 'Some additional information'),
(25, 'Coastal Retreat', 'United Kingdom', 'England', 'Brighton', 'Seafront Road', 'Seaside Haven', 27, 'Brighton Seascapes', 'BN1 2GR', 'Some additional information'),
(26, 'Alpine Chalet', 'Switzerland', 'Valais', 'Verbier', 'Ski Slope Road', 'Alpine Retreat', 12, 'Swiss Alps Adventures', '1936', 'Some additional information'),
(27, 'Canal House', 'Netherlands', 'North Holland', 'Amsterdam', 'Herengracht', 'Canal Residences', 75, 'Dutch Tulips Ltd.', '1015 AD', 'Some additional information'),
(28, 'Countryside Villa', 'Italy', 'Tuscany', 'Florence', 'Chianti Hills', 'Villa Toscana', 6, 'Italian Vineyards', '50125', 'Some additional information'),
(29, 'Baroque Apartment', 'Austria', 'Vienna', 'Vienna', 'Schönbrunnstrasse', 'Imperial Residences', 17, 'Viennese Elegance Ltd.', '1130', 'Some additional information');

SELECT *
FROM `address`;

DROP TABLE `address`;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- PAYMENT_METHOD TABLE
CREATE TABLE `payment_method` (
    `payment_id` INT(6) PRIMARY KEY AUTO_INCREMENT,
    `user_id` INT(6) NOT NULL,
    `name` VARCHAR(20) NOT NULL,
    `card_number` VARCHAR(50) NOT NULL,
    `expiry_date` DATE NOT NULL,
    `cvv` VARCHAR(50) NOT NULL,
    FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`) ON DELETE CASCADE
) AUTO_INCREMENT = 200;

INSERT INTO `payment_method` (`user_id`, `name`, `card_number`, `expiry_date`, `cvv`)
VALUES
(10, 'Visa', MD5('8732 3284 9012 9321'), '2030-08-01', MD5(923)),
(11, 'Visa', MD5('9413 8974 4301 9854'), '2028-01-04', MD5(145)),
(12, 'Mastercard', MD5('8883 3432 1904 8931'), '2032-05-05', MD5(235)),
(13, 'PayPal', MD5('4013 5433 1345 4325'), '2035-03-21', MD5(547)),
(14, 'Visa', MD5('9931 4314 0983 5324'), '2030-02-15', MD5(940)),
(15, 'PayPal', MD5('4451 8987 3188 9831'), '2026-08-14', MD5(659)),
(16, 'Mastercard', MD5('8791 8174 7731 1324'), '2027-04-03', MD5(101)),
(17, 'PayPal', MD5('3413 2342 5462 1111'), '2028-05-30', MD5(805)),
(18, 'Visa', MD5('7674 8998 3124 7854'), '2031-07-16', MD5(605)),
(19, 'Visa', MD5('4359 7982 9730 3030'), '2032-03-25', MD5(742)),
(20, 'Mastercard', MD5('5123 6543 7890 9876'), '2029-11-12', MD5(309)),
(21, 'Mastercard', MD5('9765 4321 5678 1234'), '2030-02-18', MD5(512)),
(22, 'Visa', MD5('1234 5678 9012 3456'), '2027-09-08', MD5(217)),
(23, 'PayPal', MD5('7890 1234 5678 9012'), '2033-04-20', MD5(419)),
(24, 'Visa', MD5('2345 6789 0123 4567'), '2028-08-05', MD5(624)),
(25, 'Mastercard', MD5('8901 2345 6789 0123'), '2030-12-09', MD5(318)),
(26, 'Visa', MD5('3456 7890 1234 5678'), '2029-03-15', MD5(721)),
(27, 'Mastercard', MD5('9012 3456 7890 2345'), '2031-06-22', MD5(425)),
(28, 'Visa', MD5('4567 8901 2345 6789'), '2027-01-11', MD5(128)),
(29, 'PayPal', MD5('6789 0123 4567 8901'), '2032-09-28', MD5(532));

SELECT *
FROM `payment_method`;

DROP TABLE `payment_method`;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VOUCHER TABLE
CREATE TABLE `voucher` (
    `voucher_id` INT(6) PRIMARY KEY AUTO_INCREMENT,
    `user_id` INT(6) NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    `code` VARCHAR(50) NOT NULL,
    `expiry_date` DATETIME NOT NULL,
    FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`) ON DELETE CASCADE
) AUTO_INCREMENT = 300;

INSERT INTO `voucher` (`user_id`, `name`, `code`, `expiry_date`)
VALUES
(10, '20% discount on all accessories', MD5('ASDD-213D-DSF3-VXE0'), '2024-01-01 12:00:00'),
(11, '25% discount on all sneakers', MD5('DS3D-VCXB-213F-FDG5'), '2024-02-14 10:00:00'),
(12, '10% discount on all hats', MD5('VCBV-78SA-0ADD-LLFE'), '2024-01-19 21:00:00'),
(13, '50% discount on all t-shirts', MD5('IPO2-D23B-KJHK-EWRD'), '2024-04-04 15:00:00'),
(14, '35% discount on all socks', MD5('KLWQ-U712-CXVN-KAST'), '2024-03-09 19:00:00'),
(15, '10% discount on all products', MD5('OD23-LKZ3-120D-CXV3'), '2024-02-28 15:00:00'),
(16, '15% discount on all jackets', MD5('JLK2-POI4-98U7-XC23'), '2024-05-15 14:00:00'),
(17, '30% discount on all jeans', MD5('HJ67-LOI9-34D5-ZXC8'), '2024-06-20 18:30:00'),
(18, '20% discount on all accessories', MD5('CVB3-PLM9-67F2-KJH1'), '2024-07-07 12:45:00'),
(19, '40% discount on all socks', MD5('ZXC1-POI7-89V3-NMK0'), '2024-08-25 09:15:00'),
(20, '25% discount on all hats', MD5('PLK8-ASD2-90JH-XC67'), '2024-09-12 16:30:00');

SELECT *
FROM `voucher`;

DROP TABLE `voucher`;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- INTEREST TABLE
CREATE TABLE `interest` (
    `interest_id` INT(6) PRIMARY KEY AUTO_INCREMENT,
    `user_id` INT(6) NOT NULL,
    `sport` VARCHAR(30),
    `product` VARCHAR(30),
    `team` VARCHAR(30),
    `athlete` VARCHAR(30),
    `city` VARCHAR(30),
    FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`) ON DELETE CASCADE
) AUTO_INCREMENT = 400;

INSERT INTO `interest` (`user_id`, `sport`, `product`, `team`, `athlete`, `city`)
VALUES
(10, 'Basketball', 'Air Force 1', 'Los Angeles Lakers', 'LeBron James','LA'),
(11, 'Tennis', 'Nike Air Max 97', 'Milwaukee Bucks', 'Roger Federer', 'WI'),
(12, 'Basketball', 'Adidas Ultra Boost', 'Golden State Warriors', 'Stephen Curry', 'CA'),
(13, 'Football', 'Converse Chuck Taylor All Star', 'Brooklyn Nets', 'Lionel Messi', 'NY'),
(14, 'Football', 'Vans Old Skool', 'Portland Trail Blazers', 'Cristiano Ronaldo', 'OR'),
(15, 'Tennis', 'Puma Suede Classic', 'Los Angeles Clippers', 'Dominic Thiem', 'CA'),
(16, 'Basketball', 'Reebok Classic Leather', 'Brooklyn Nets', 'James Harden', 'NY'),
(17, 'Football', 'New Balance 990', 'Brooklyn Nets', 'Kylian Mbappé', 'NY'),
(18, 'Basketball', 'Jordan Retro 1', 'New York Knicks', 'Kawhi Leonard', 'NY'),
(19, 'Football', 'Yeezy Boost 350', 'Paris Saint-Germain', 'Neymar Jr.', 'Paris'),
(20, 'Football', 'Under Armour Curry 6', 'Real Madrid', 'Karim Benzema', 'Madrid'),
(21, 'Basketball', 'Fila Disruptor', 'Manchester City', 'Ben Simmons', 'Manchester'),
(22, 'Football', 'Brooks Ghost 13', 'Barcelona', 'Bruno Fernandes', 'Barcelona'),
(23, 'Basketball', 'Saucony Jazz Original', 'ATP Tour', 'Jimmy Butler', 'Monaco'),
(24, 'Tennis', 'Air Zoom Vapor Cage 4', 'WTA Tour', 'Serena Williams', 'Florida'),
(25, 'Tennis', 'ASICS GEL-Kayano 27', 'ATP Tour', 'Rafael Nadal', 'Spain');

SELECT *
FROM `interest`;

DROP TABLE `interest`;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- USER_SIZE TABLE
CREATE TABLE `user_size` (
    `size_id` INT(6) PRIMARY KEY AUTO_INCREMENT,
    `user_id` INT(6) NOT NULL,
    `headwear` VARCHAR(3),
    `top` VARCHAR(3),
    `bra` VARCHAR(3),
    `bottom` VARCHAR(3),
    `shoe` DECIMAL(3, 1),
    FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`) ON DELETE CASCADE
) AUTO_INCREMENT = 500;

INSERT INTO `user_size` (`user_id`, `headwear`, `top`, `bra`, `bottom`, `shoe`)
VALUES
(10, 'M', 'L', 'S', '-', 6.5),
(11, 'L', 'M', 'S', 'XL', 7.0),
(12, 'XS', 'M', 'L', '-', 7.5),
(13, 'S', 'XL', 'M', 'L', 8.0),
(14, 'L', 'M', 'S', '-', 8.5),
(15, 'M', 'XS', 'L', 'S', 9.0),
(16, 'XL', 'S', 'M', '-', 9.5),
(17, 'M', 'XS', 'L', 'S', 6.5),
(18, 'XXL', 'S', 'M', '-', 6.0),
(19, 'S', 'L', 'M', 'XL', 7.0),
(20, 'S', 'L', 'M', '-', 5.5);

SELECT *
FROM `user_size`;

DROP TABLE `user_size`;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- PRODUCT TABLE
CREATE TABLE `product` (
    `product_id` INT(6) PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `category` ENUM('Men', 'Women', 'Kids') NOT NULL,
    `type` VARCHAR(20) NOT NULL,
    `colour` VARCHAR(20) NOT NULL,
    `size` DECIMAL(3, 1) NOT NULL,
    `price` DECIMAL(6, 2) NOT NULL,
    `style_number` INT(8) NOT NULL, 
    `stock_status` ENUM('In Stock', 'Out of Stock') NOT NULL
) AUTO_INCREMENT = 600;

INSERT INTO `product` (`name`, `category`, `type`, `colour`, `size`, `price`, `style_number`, `stock_status`)
VALUES
('Air Force', 'Men', 'Jordan', 'Tech Grey', 9.0, 115.47, 14359932, 'In Stock'),
('Nike Air Max 97', 'Women', 'Nike', 'Silver Bullet', 6.5, 159.99, 25471234, 'In Stock'),
('Adidas Ultra Boost', 'Men', 'Adidas', 'Black', 8.5, 179.95, 36582345, 'Out of Stock'),
('Converse Chuck Taylor All Star', 'Men', 'Converse', 'White', 7.0, 49.99, 98765432, 'In Stock'),
('Vans Old Skool', 'Women', 'Vans', 'Classic Black', 6.0, 59.99, 87654321, 'In Stock'),
('Puma Suede Classic', 'Men', 'Puma', 'Forest Night', 10.5, 64.95, 65432109, 'In Stock'),
('Yeezy Boost 350', 'Men', 'Adidas', 'Cream White', 9.5, 220.00, 75395128, 'Out of Stock'),
('Under Armour Curry 6', 'Women', 'Under Armour', 'Black/Red', 7.0, 129.99, 15935746, 'In Stock'),
('Fila Disruptor', 'Kids', 'Fila', 'White/Navy/Red', 4.0, 65.00, 24681357, 'In Stock'),
('Brooks Ghost 13', 'Men', 'Brooks', 'Grey/Blue', 10.5, 129.95, 36985214, 'Out of Stock'),
('Saucony Jazz Original', 'Women', 'Saucony', 'Grey/Red', 5.5, 69.99, 78541236, 'In Stock'),
('Air Zoom Vapor Cage 4', 'Women', 'Nike', 'Pink/White', 6.5, 144.99, 95175384, 'Out of Stock'),
('ASICS GEL-Kayano 27', 'Kids', 'ASICS', 'Black/Silver', 3.5, 159.95, 12345678, 'In Stock');

SELECT *
FROM `product`;

DROP TABLE `product`;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- BAG_ITEM TABLE
CREATE TABLE `bag_item` (
    `bag_item_id` INT(6) PRIMARY KEY AUTO_INCREMENT,
    `user_id` INT(6) NOT NULL,
    `product_id` INT(6) NOT NULL,
    `left_text` VARCHAR(10),
    `right_text` VARCHAR(10),
    `quantity` TINYINT NOT NULL,
    `price` DECIMAL(6, 2) NOT NULL,
    FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`) ON DELETE CASCADE,
    FOREIGN KEY (`product_id`) REFERENCES `product`(`product_id`) ON DELETE CASCADE
) AUTO_INCREMENT = 700;

INSERT INTO `bag_item` (`user_id`, `product_id`, `left_text`, `right_text`, `quantity`, `price`)
VALUES
(10, 601, 'Jack', 'Jones', 2, 219.9),
(11, 604, 'Emma', 'Smith', 1, 67.95),
(12, 602, 'John', 'Doe', 1, 109.95),
(13, 600, 'Sara', 'Brown', 2, 230.94),
(14, 605, 'Mike', 'Taylor', 1, 253.95),
(15, 606, 'Olivia', 'Robinson', 1, 119.95);

SELECT *
FROM `bag_item`;

DROP TABLE `bag_item`;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- WISHLIST_ITEM TABLE
CREATE TABLE `wishlist_item` (
    `wishlist_item_id` INT(6) PRIMARY KEY AUTO_INCREMENT,
    `user_id` INT(6) NOT NULL,
    `product_id` INT(6) NOT NULL,
    `added_date` DATE NOT NULL,
    FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`) ON DELETE CASCADE,
    FOREIGN KEY (`product_id`) REFERENCES `product`(`product_id`) ON DELETE CASCADE
) AUTO_INCREMENT = 800;

INSERT INTO `wishlist_item` (`user_id`, `product_id`, `added_date`)
VALUES
(10, 603, '2023-11-16'),
(11, 601, '2023-11-10'),
(12, 605, '2023-10-02'),
(13, 607, '2023-09-22'),
(14, 604, '2023-07-11'),
(15, 606, '2023-07-01'),
(16, 608, '2023-06-02'),
(17, 612, '2023-05-27'),
(18, 609, '2023-04-03'),
(19, 610, '2023-03-15'),
(20, 602, '2023-02-01');

SELECT *
FROM `wishlist_item`;

DROP TABLE `wishlist_item`;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- STORE TABLE
CREATE TABLE `store` (
    `store_id` INT(6) PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `location` VARCHAR(100) NOT NULL,
    `work_hours` VARCHAR(255) NOT NULL
) AUTO_INCREMENT = 900;

INSERT INTO `store` (`name`, `location`, `work_hours`)
VALUES
('Edinburgh Central', 'Princes Street', 'Mon - Fri: 09:00 - 17:30, Sat: 10:00 - 16:00, Sun: Closed'),
('Cambridge Junction', 'Market Square', 'Mon - Sat: 10:00 - 18:00, Sun: 11:00 - 16:00'),
('Cardiff Bay', 'Mermaid Quay', 'Mon - Fri: 09:30 - 18:30, Sat: 10:00 - 17:00, Sun: 11:00 - 16:00'),
('Newcastle Heights', 'Grey Street', 'Mon - Thu: 10:00 - 19:00, Fri: 10:00 - 20:00, Sat: 09:30 - 17:30, Sun: 11:00 - 16:00'),
('Bristol Riverside', 'Harborside', 'Mon - Sat: 09:00 - 18:00, Sun: 11:00 - 16:00'),
('Aberdeen Square', 'Union Street', 'Mon - Fri: 09:30 - 17:30, Sat: 10:00 - 16:00, Sun: Closed'),
('Sheffield Plaza', 'Fargate', 'Mon - Sat: 10:00 - 19:00, Sun: 11:00 - 16:00'),
('Oxford Central', 'Cornmarket Street', 'Mon - Fri: 09:00 - 18:00, Sat: 10:00 - 17:00, Sun: Closed'),
('Southampton Harbour', 'Ocean Village', 'Mon - Thu: 10:00 - 20:00, Fri: 10:00 - 21:00, Sat: 09:30 - 18:30, Sun: 11:00 - 16:00'),
('Plymouth Waterfront', 'Royal Parade', 'Mon - Sat: 09:30 - 18:30, Sun: 11:00 - 16:00'),
('Manchester Square', 'Oxford Street', 'Mon - Fri: 09:00 - 18:00, Sat: 10:00 - 17:00, Sun: 11:00 - 16:00'),
('Liverpool Central', 'Bold Street', 'Mon - Sat: 10:00 - 19:00, Sun: 11:00 - 17:00'),
('Leeds Junction', 'City Centre', 'Mon - Fri: 08:30 - 18:30, Sat: 09:00 - 17:00, Sun: Closed'),
('Glasgow Riverside', 'Clyde Waterfront', 'Mon - Thu: 10:00 - 20:00, Fri: 10:00 - 21:00, Sat: 09:30 - 18:30, Sun: 11:00 - 16:00'),
('Belfast Square', 'Victoria Square', 'Mon - Sat: 09:30 - 18:30, Sun: 12:00 - 17:00'),
('Unite Wembley', 'Designer Outlet', 'Mon - Sat: 10:00 - 20:00, Sun: 11:00 - 17:00');

SELECT *
FROM `store`;

DROP TABLE `store`;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- EVENT TABLE
CREATE TABLE `event` (
    `event_id` INT(6) PRIMARY KEY AUTO_INCREMENT,
    `store_id` INT(6) NOT NULL,
    `name` VARCHAR(50) NOT NULL,
    `date` DATE NOT NULL,
    `time` TIME NOT NULL,
    `location` VARCHAR(100) NOT NULL,
    `about` VARCHAR(255),
    `important_info` VARCHAR(255),
    FOREIGN KEY (`store_id`) REFERENCES `store`(`store_id`) ON DELETE CASCADE
) AUTO_INCREMENT = 1000;

INSERT INTO `event` (`store_id`, `name`, `date`, `time`, `location`, `about`, `important_info`)
VALUES
(900, 'Grand Opening', '2023-11-01', '18:00:00', 'Designer Outlet', 'About Info', 'Important Info'),
(901, 'Holiday Sale', '2023-12-15', '15:00:00', 'Oxford Street', 'About Info', 'Important Info'),
(902, 'Tech Expo', '2024-01-10', '14:30:00', 'Market Square', 'About Info', 'Important Info'),
(903, 'Fashion Show', '2024-02-10', '19:00:00', 'Mermaid Quay', 'About Info', 'Important Info'),
(904, 'Game Night', '2024-03-25', '18:30:00', 'Grey Street', 'About Info', 'Important Info'),
(905, 'Harborfront Jazz', '2024-04-05', '20:00:00', 'Harborside', 'About Info', 'Important Info'),
(906, 'Union Street Art Expo', '2024-05-20', '17:30:00', 'Union Street', 'About Info', 'Important Info'),
(907, 'Fargate Food Festival', '2024-06-08', '18:00:00', 'Fargate', 'About Info', 'Important Info'),
(908, 'Cornmarket Book Club', '2024-07-28', '19:30:00', 'Cornmarket Street', 'About Info', 'Important Info'),
(909, 'Ocean Village Cinema Night', '2024-08-03', '20:00:00', 'Ocean Village', 'About Info', 'Important Info');

SELECT *
FROM `event`;

DROP TABLE `event`;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ORDER TABLE
CREATE TABLE `order` (
  `order_id` INT(6) PRIMARY KEY AUTO_INCREMENT,
  `user_id` INT(6) NOT NULL,
  `store_id` INT(6) NOT NULL,
  `number` INT(8) NOT NULL,
  `date` DATETIME NOT NULL,
  `status` ENUM('Pending', 'Processing', 'Shipped', 'Delivered', 'Cancelled') NOT NULL,
  `price` DECIMAL(6, 2) NOT NULL,
  FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`),
  FOREIGN KEY (`store_id`) REFERENCES `store`(`store_id`)
) AUTO_INCREMENT = 2000;

INSERT INTO `order` (`user_id`, `store_id`, `number`, `date`, `status`, `price`)
VALUES 
(10, 900, 82746219, '2023-10-12 12:00:00', 'Pending', 200.00),
(11, 901, 56371837, '2023-09-22 17:00:00', 'Delivered', 55.00),
(12, 902, 18203741, '2023-11-12 18:00:00', 'Delivered', 117.00),
(13, 903, 98789172, '2023-11-02 15:00:00', 'Delivered', 310.00),
(14, 904, 84213294, '2023-08-17 19:00:00', 'Delivered', 71.00),
(15, 905, 12948501, '2023-05-11 20:00:00', 'Delivered', 142.00),
(16, 906, 54029418, '2023-10-05 8:00:00', 'Delivered', 225.00),
(17, 907, 65431278, '2023-09-10 16:00:00', 'Delivered', 75.00),
(18, 908, 78906543, '2023-08-05 14:30:00', 'Delivered', 110.00),
(19, 909, 71235409, '2023-09-18 14:30:00', 'Cancelled', 98.00),
(20, 910, 62348957, '2023-10-28 16:45:00', 'Shipped', 180.00),
(21, 911, 89123746, '2023-11-15 10:15:00', 'Processing', 65.00);

SELECT *
FROM `order`;

DROP TABLE `order`;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- REVIEW TABLE
CREATE TABLE `review` (
  `review_id` INT(6) PRIMARY KEY AUTO_INCREMENT,
  `product_id` INT(6) NOT NULL,
  `user_id` INT(6) NOT NULL,
  `rate` DECIMAL(2, 1) NOT NULL,
  `date` DATE NOT NULL,
  `small_comment` VARCHAR(20) NOT NULL,
  `big_comment` VARCHAR(255) NOT NULL,
  `likes` SMALLINT NOT NULL,
  `dislikes` SMALLINT NOT NULL,
  FOREIGN KEY (`product_id`) REFERENCES `product`(`product_id`) ON DELETE CASCADE,
  FOREIGN KEY (`user_id`) REFERENCES `user`(`user_id`) ON DELETE CASCADE
) AUTO_INCREMENT = 3000;

INSERT INTO `review` (`product_id`, `user_id`, `rate`, `date`, `small_comment`, `big_comment`, `likes`, `dislikes`)
VALUES 
(600, 12, 4.5, '2023-06-15', 'Good', 'This is a good product.', 15, 3),
(601, 15, 3.0, '2023-07-22', 'Average', 'Not bad, not great.', 8, 5),
(602, 19, 5.0, '2023-10-05', 'Excellent', 'I love it!', 25, 0),
(603, 11, 2.5, '2023-11-14', 'Poor', 'Disappointed with the quality.', 2, 10),
(604, 10, 4.0, '2023-08-02', 'Very good', 'Satisfied with the purchase.', 20, 2),
(604, 17, 3.0, '2023-08-03', 'Okay', 'Nothing too special', 10, 3),
(606, 18, 4.0, '2023-09-10', 'Great value', 'Impressed with the price and quality.', 12, 1),
(607, 14, 2.0, '2023-07-05', 'Not recommended', 'Had issues with durability.', 5, 7),
(608, 16, 4.5, '2023-11-25', 'Highly recommended', 'Worth the investment.', 18, 0),
(609, 13, 3.5, '2023-10-18', 'Decent product', 'Met my expectations but nothing extraordinary.', 14, 2),
(610, 16, 4.5, '2023-11-28', 'Highly recommended', 'Well worth the investment.', 18, 0),
(610, 13, 3.5, '2023-10-18', 'Decent product', 'Met my expectations but nothing extraordinary.', 11, 4),
(605, 20, 4.0, '2023-09-02', 'Impressive', 'The quality exceeded my expectations.', 17, 1),
(611, 12, 3.0, '2023-10-30', 'Satisfactory', 'It is good for the price.', 13, 2),
(603, 14, 2.0, '2023-11-20', 'Not recommended', 'Had sizing issues, not comfortable.', 6, 9),
(608, 16, 4.5, '2023-11-25', 'Highly recommended', 'Worth the investment.', 18, 0),
(609, 13, 3.5, '2023-10-18', 'Decent product', 'Met my expectations but nothing extraordinary.', 14, 2),
(610, 16, 4.5, '2023-11-28', 'Highly recommended', 'Well worth the investment.', 18, 0),
(610, 13, 3.5, '2023-10-18', 'Decent product', 'Met my expectations but nothing extraordinary.', 11, 4),
(605, 20, 4.0, '2023-09-02', 'Impressive', 'The quality exceeded my expectations.', 17, 1),
(611, 12, 3.0, '2023-10-30', 'Satisfactory', 'It is good for the price.', 13, 2),
(603, 14, 2.0, '2023-11-20', 'Not recommended', 'Had sizing issues, not comfortable.', 6, 9);

SELECT *
FROM `review`;

DROP TABLE `review`;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- PRODUCT_INFO TABLE
CREATE TABLE `product_info` (
  `info_id` INT(6) PRIMARY KEY AUTO_INCREMENT,
  `product_id` INT(6) NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  `story` VARCHAR(255) NOT NULL,
  `benefits` VARCHAR(255) NOT NULL,
  `details` VARCHAR(255) NOT NULL,
  `material_info` VARCHAR(255) NOT NULL,
  `care_instruction` VARCHAR(255) NOT NULL,
  FOREIGN KEY (`product_id`) REFERENCES `product`(`product_id`) ON DELETE CASCADE
) AUTO_INCREMENT = 4000;

INSERT INTO `product_info` (`product_id`, `description`, `story`, `benefits`, `details`, `material_info`, `care_instruction`)
VALUES 
(600, 'Air Force Description', 'Air Force Story', 'Air Force Benefits', 'Air Force Details', 'Air Force Material Info', 'Air Force Care Instruction'),
(601, 'Nike Air Max 97 Description', 'Nike Air Max 97 Story', 'Nike Air Max 97 Benefits', 'Nike Air Max 97 Details', 'Nike Air Max 97 Material Info', 'Nike Air Max 97 Care Instruction'),
(602, 'Adidas Ultra Boost Description', 'Adidas Ultra Boost Story', 'Adidas Ultra Boost Benefits', 'Adidas Ultra Boost Details', 'Adidas Ultra Boost Material Info', 'Adidas Ultra Boost Care Instruction'),
(603, 'Converse Chuck Taylor All Star Description', 'Converse Chuck Taylor All Star Story', 'Converse Chuck Taylor All Star Benefits', 'Converse Chuck Taylor All Star Details', 'Converse Chuck Taylor All Star Material Info', 'Converse Chuck Taylor All Star Care Instruction'),
(604, 'Vans Old Skool Description', 'Vans Old Skool Story', 'Vans Old Skool Benefits', 'Vans Old Skool Details', 'Vans Old Skool Material Info', 'Vans Old Skool Care Instruction'),
(605, 'Puma Suede Classic Description', 'Puma Suede Classic Story', 'Puma Suede Classic Benefits', 'Puma Suede Classic Details', 'Puma Suede Classic Material Info', 'Puma Suede Classic Care Instruction');

SELECT *
FROM `product_info`;

DROP TABLE `product_info`;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- STORE_PRODUCT TABLE
CREATE TABLE `store_product` (
  `store_id` INT(6) NOT NULL,
  `product_id` INT(6) NOT NULL,
  `quantity_in_stock` TINYINT NOT NULL,
  PRIMARY KEY (`store_id`, `product_id`),
  FOREIGN KEY (`store_id`) REFERENCES `store`(`store_id`),
  FOREIGN KEY (`product_id`) REFERENCES `product`(`product_id`)
);

INSERT INTO `store_product` (`store_id`, `product_id`, `quantity_in_stock`)
VALUES 
(902, 602, 20),
(903, 603, 120),
(900, 601, 70),
(901, 605, 35),
(903, 607, 65),
(904, 608, 25);

SELECT *
FROM `store_product`;

DROP TABLE `store_product`;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- STORE_NUMBER TABLE
CREATE TABLE `store_number` (
  `number_id` INT(6) PRIMARY KEY AUTO_INCREMENT,
  `store_id` INT(6) NOT NULL,
  `contact_number` VARCHAR(20) NOT NULL,
  FOREIGN KEY (`store_id`) REFERENCES `store`(`store_id`) ON DELETE CASCADE
) AUTO_INCREMENT = 5000;

INSERT INTO `store_number` (`store_id`, `contact_number`)
VALUES 
(903, '+44 28 9471 5471'),
(902, '+44 34 3245 4351'),
(901, '+44 12 0921 8302'),
(900, '+44 24 8432 0154'),
(902, '+44 54 1245 5462'),
(903, '+44 87 9785 1559');

SELECT *
FROM `store_number`;

DROP TABLE `store_number`;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- STORE_FEATURE TABLE
CREATE TABLE `store_feature` (
  `feature_id` INT(6) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `store_id` INT(6) NOT NULL,
  `feature` VARCHAR(20) NOT NULL,
  FOREIGN KEY (`store_id`) REFERENCES `store`(`store_id`) ON DELETE CASCADE
) AUTO_INCREMENT = 6000;

INSERT INTO `store_feature` (`store_id`, `feature`)
VALUES 
(902, 'Free Wi-Fi'),
(900, 'Parking Available'),
(903, 'Wheelchair Access'),
(904, 'Pet-Friendly'),
(905, 'Free Snacks'),
(901, 'Video Games');

SELECT *
FROM `store_feature`;

DROP TABLE `store_feature`;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TESTING
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- QUERY 1
DELIMITER $$
CREATE PROCEDURE GetTopRatedProducts(IN numberOfReviews INT)
BEGIN
    SELECT
        `product`.product_id AS `Product ID`,
        `product`.name AS `Product Name`,
        AVG(`review`.rate) AS `Average Rating`,
        COUNT(review.review_id) AS `Total Reviews`
    FROM
        `product`
    JOIN
        `review` ON `product`.product_id = `review`.product_id
    WHERE
        `product`.stock_status = 'In Stock'
    GROUP BY
        `product`.product_id
    HAVING
        `Total Reviews` >= numberOfReviews
    ORDER BY
        `Average Rating` DESC, `Total Reviews` DESC;
END $$
DELIMITER ;

CALL GetTopRatedProducts(2);
DROP PROCEDURE IF EXISTS GetTopRatedProducts;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- QUERY 2
DELIMITER $$
CREATE PROCEDURE GetUsersByCountryAndSport(IN country VARCHAR(30), IN sport VARCHAR(30))
BEGIN
    SELECT 
        `user`.user_id AS `User ID`,
        CONCAT(`user`.first_name, ' ', `user`.last_name) AS `Full Name`,
        `address`.country AS `Country`,
        `interest`.sport AS `Sport`,
        GetUserCount(`interest`.sport) AS `User Count`
    FROM 
        `user`
    JOIN 
        `address` ON `user`.user_id = `address`.user_id
    JOIN 
        `interest` ON `user`.user_id = `interest`.user_id
    WHERE 
        `address`.country = country
        AND `interest`.sport = sport
    ORDER BY 
        `user`.user_id;
END $$
DELIMITER ;

CALL GetUsersByCountryAndSport('United Kingdom','Tennis');
DROP PROCEDURE IF EXISTS GetUsersByCountryAndSport;

DELIMITER $$
CREATE FUNCTION GetUserCount(sport VARCHAR(30)) RETURNS INT
READS SQL DATA
BEGIN
    DECLARE user_count INT;
    SELECT COUNT(*) INTO user_count
    FROM `interest`
    WHERE `interest`.sport = sport;
    RETURN user_count;
END $$
DELIMITER ;

DROP FUNCTION IF EXISTS GetUserCount;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- QUERY 3
DELIMITER $$
CREATE PROCEDURE GetRecentWishlistItems(IN category VARCHAR(50))
BEGIN
    SELECT
        CONCAT(user.first_name, ' ', user.last_name) AS "Full Name",
        product.name AS "Product Name",
        wishlist_item.added_date AS "Added Date"
    FROM
        user
    INNER JOIN
        wishlist_item ON user.user_id = wishlist_item.user_id
    INNER JOIN
        product ON wishlist_item.product_id = product.product_id
    WHERE
        product.category = category
    ORDER BY
        wishlist_item.added_date DESC
    LIMIT
        3;
END $$
DELIMITER ;

CALL GetRecentWishlistItems('Women');
DROP PROCEDURE IF EXISTS GetRecentWishlistItems;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- QUERY 4
DELIMITER $$
CREATE PROCEDURE CalculateStoreSales(IN topResults INT)
BEGIN
  SELECT
    `store`.store_id AS 'Store ID',
    `store`.name AS 'Store Name',
    `store`.location AS 'Store Location',
    SUM(`order`.`price`) AS `Total Sales`
  FROM
    `store`
  LEFT JOIN
    `order` ON `store`.`store_id` = `order`.`store_id`
  WHERE
    `order`.status = 'Delivered'
  GROUP BY
    `store`.store_id
  ORDER BY
    `Total Sales` DESC
  LIMIT topResults;
END $$
DELIMITER ;

CALL CalculateStoreSales(5);
DROP PROCEDURE IF EXISTS CalculateStoreSales;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- QUERY 5
DELIMITER $$
CREATE PROCEDURE AnalyseOrderStatistics()
BEGIN
    SELECT
        sex AS `Gender`,
        COUNT(`order`.order_id) AS `Total Orders`,
        SUM(`order`.price) AS `Total Orders Value`
    FROM
        `user`
    LEFT JOIN
        `order` ON `user`.user_id = `order`.user_id
    GROUP BY
        `Gender`
    ORDER BY
       `Total Orders` DESC, `Total Orders Value` DESC;
END $$
DELIMITER ;

CALL AnalyseOrderStatistics();
DROP PROCEDURE IF EXISTS AnalyseOrderStatistics;
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------