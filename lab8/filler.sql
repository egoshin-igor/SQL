/*
  SET @category_size := 6;
  SET @currency_size = 2;
  SET @delivery_size = 4;
  SET @order_status_size = 3;
  SET @payment_method_size = 4;
  SET @product_status_size = 2;
  SET @user_status_size = 2;
  SET @user_size = 100;
  SET @product_size = 100;
  SET @products_order_size = 400;
  SET @sellers_product_size = 400;
  SET @product_image_size = 200;
*/
use lab8;

--
DELETE FROM product;
ALTER TABLE product AUTO_INCREMENT = 1;
CALL fill_product();

DELETE FROM product_image;
ALTER TABLE product_image AUTO_INCREMENT = 1;
CALL fill_product_image();

DELETE FROM user;
ALTER TABLE user AUTO_INCREMENT = 1;
CALL fill_user();

DELETE FROM sellers_product;
ALTER TABLE sellers_product AUTO_INCREMENT = 1;
CALL fill_sellers_product();

DELETE FROM products_order;
ALTER TABLE products_order AUTO_INCREMENT = 1;
CALL fill_products_order();
-- 

-- Fill product table
DROP PROCEDURE IF EXISTS fill_product;
DELIMITER //
CREATE PROCEDURE fill_product()
BEGIN
  SET @counter = 0;
  WHILE (@counter < 100) DO
    INSERT INTO product
    VALUES
      (NULL,
      concat(substring('BCDFGHJKLMNPQRSTVWXZ', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1)),
      "Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.",
      FLOOR(RAND()*400000),
      FLOOR(1 + RAND()*2),
	  FLOOR(RAND()*4000),
	  FLOOR(1 + RAND()*6),
      FLOOR(1 + RAND()*2));
    SET @counter = @counter + 1;
  END WHILE;
END//
DELIMITER ;

-- Fill product_image
DROP PROCEDURE IF EXISTS fill_product_image;
DELIMITER //
CREATE PROCEDURE fill_product_image()
BEGIN
  SET @counter = 0;
  WHILE (@counter < 100) DO
    INSERT INTO product_image
    VALUES
      (NULL,
	  concat("../images/", substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), ".jpg"),
	  FLOOR(1 + RAND()*100));
	INSERT INTO product_image
    VALUES
      (NULL,
	  concat("../images/", substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), ".jpg"),
	  @counter + 1);
    SET @counter = @counter + 1;
  END WHILE;
END//
DELIMITER ;

-- Fill user table
DROP PROCEDURE IF EXISTS fill_user;
DELIMITER //
CREATE PROCEDURE fill_user()
BEGIN
  SET @counter = 0;
  WHILE (@counter < 100) DO
    INSERT INTO user
    VALUES
      (NULL,
      concat(substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1)),
	  md5(concat(substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1))),
      concat(substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), ".", substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), "@gmail.com"),
      concat(substring('7893', FLOOR(1 + RAND()*4), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1)),
	  FLOOR(1 + RAND()*2),
	  concat("../images/", substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), ".jpg"),
      substring('ABCENGDUTRUSBEN', FLOOR(1 + RAND()*4)*3 + 1, 3)
      );
    SET @counter = @counter + 1;
  END WHILE;
END//
DELIMITER ;

-- Fill sellers_product table
DROP PROCEDURE IF EXISTS fill_sellers_product;
DELIMITER //
CREATE PROCEDURE fill_sellers_product()
BEGIN
  SET @counter = 0;
  WHILE (@counter < 400) DO
    INSERT INTO sellers_product
    VALUES
      (NULL,
	  FLOOR(1 + RAND()*100),
	  FLOOR(1 + RAND()*100)
      );
    SET @counter = @counter + 1;
  END WHILE;
END//
DELIMITER ;

-- Fill products_order table
DROP PROCEDURE IF EXISTS fill_products_order;
DELIMITER //
CREATE PROCEDURE fill_products_order()
BEGIN
  SET @counter = 0;
  WHILE (@counter < 400) DO
    INSERT INTO products_order
    VALUES
      (NULL,
	  FLOOR(1 + RAND()*100),
	  FLOOR(1 + RAND()*100),
	  FLOOR(1 + RAND()*300),
      FLOOR(1 + RAND()*4),
      FLOOR(1 + RAND()*50000),
      FLOOR(1 + RAND()*4),
      FLOOR(1 + RAND()*3)
      );
    SET @counter = @counter + 1;
  END WHILE;
END//
DELIMITER ;