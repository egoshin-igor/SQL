use lab8;
-- Получение списка с каталогом
SELECT name FROM category;

-- Получение данных для товара в списке товаров
SELECT product.name, price, id_product FROM product
WHERE
	id_category = 1;

-- получение последних новинок
SELECT name, price, id_product FROM product
WHERE id_category = 1
ORDER BY id_product desc
LIMIT 5;

-- фильтр по цене
SELECT name, price, id_product FROM product
WHERE price BETWEEN 10000 AND 100000 AND id_category = 2;

-- фильтр по количеству
SELECT name, price, id_product FROM product
WHERE quantity BETWEEN 100 AND 1000 AND id_category = 2;

-- сортировка по популярным товарам в категории
SELECT product.name, product.price, product.id_product FROM product
LEFT JOIN 
	(SELECT id_product FROM product_x_order
	LEFT JOIN product USING(id_product)
	WHERE product.id_category = 1
	GROUP BY id_product
	ORDER BY SUM(product_x_order.quantity)
    ) as popular_product
USING (id_product);

-- получение последних популярных товаров
SELECT product.name, product.price, product.id_product FROM product
LEFT JOIN 
	(SELECT id_product FROM product_x_order
	GROUP BY id_product
	ORDER BY SUM(quantity)
	LIMIT 5) as popular_product
USING(id_product);

-- сколько денег потратил каждый пользователь можно так же получить среднюю цену, используя SUM
SELECT user.nickname, user.id_user, user_buying.summ_price FROM user
LEFT JOIN
	(SELECT product_x_order.id_user, SUM(product_x_order.order_price) AS summ_price FROM product_x_order
	GROUP BY id_user) as user_buying
USING(id_user);

-- поиск товара
SELECT name, price, id_product FROM product
WHERE name LIKE '%dac%';

-- Получение детальных данных для товара
SELECT product.name, product.price, product.description, product.quantity FROM product
LEFT JOIN category USING(id_category)
LEFT JOIN product_status USING(id_product_status)
WHERE
	product.id_product = 2;

SELECT * FROM product_image
WHERE
	id_product = 2;

-- Получение данных пользователя для личного кабинета
SELECT nickname, password, mail, phone, image_uri, language FROM user;

-- Проверка введенных данных при входе
SELECT COUNT(*) FROM user
WHERE
	(nickname = "fijofyf.daxinah@gmail.com" OR mail = "fijofyf.daxinah@gmail.com") AND password = "5a6b1593b18fecd9c7144e8e6d73018a";

-- заказ товара
	SET @payment_method := 1;
    SET @delivery_firm_id := 1;
	SET @needed_quantity := 10;
    SET @product_id := 1;
    
    SET @user_id := 6;
    
    SELECT @product_price := price, @current_quantity := quantity FROM product
    WHERE
		id_product = @product_id;
	INSERT INTO product_x_order
    VALUES
      (NULL,
      @user_id,
      @product_id,
      @needed_quantity,
      @payment_method,
      @product_price * @needed_quantity,
      @delivery_firm_id,
      1);
      
-- Авторизация
INSERT INTO User
VALUES
	(NULL,
    'qwerty',
    '29ea7fab5cea2ff8367d5496c2bf6a85',
    'qwerty@mail.ru',
    NULL,
    2,
    NULL,
    'RU');
    
-- Обновление данных о пользователе
UPDATE User
SET nickname = 'qazwr'
WHERE id_user = 1;

UPDATE User
SET password = '29ea7fab5cea2ff8367d5496c2bf6a1'
WHERE id_user = 1;

UPDATE User
SET mail = 'qazedc@mail.ru'
WHERE id_user = 1;

UPDATE User
SET phone = '79877199824'
WHERE id_user = 1;

UPDATE User
SET image_uri = '../images/qwer.jpg'
WHERE id_user = 1;

-- удаление товара
UPDATE product
SET quantity = 0
WHERE product_id = 4;

-- получение списка товаров производителя
SELECT id_product FROM seller_x_product
WHERE id_user = 1;

-- обновление данных о товаре
UPDATE product
SET name = 'qwert'
WHERE 
	id_product = 1;
    
UPDATE product
SET description = 'it is product'
WHERE 
	id_product = 1;
    
UPDATE product
SET price = 1000
WHERE 
	id_product = 1;
    
UPDATE product
SET quantity = 300
WHERE 
	id_product = 1;

UPDATE product
SET id_category = 1
WHERE 
	id_product = 1;
    
UPDATE product
SET id_currency = 1
WHERE 
	id_product = 1;

-- добавление товара
START TRANSACTION;
	-- пользователь выбирает себе заказ
    SET @user_id := 6;
    
	INSERT INTO product
    VALUES
      (NULL,
      'Медведь Бу',
      'Игрушечная игрушка',
      3000,
      1,
      1000,
      6,
      1);
	
    SET @last_product_id := LAST_INSERT_ID();
        
    INSERT INTO seller_x_product
    VALUES
      (NULL,
      @user_id,
      @last_product_id);
COMMIT;

-- добавление изображений для товара
INSERT INTO product_image
    VALUES
		(NULL,
        "../images/bear.jpg",
        1);