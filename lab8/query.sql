use lab8;
-- Получение списка с каталогом
SELECT name FROM category;

-- Получение данных для товара в списке товаров
SELECT product.name, price, id_product FROM product
LEFT JOIN category USING(id_category)
WHERE
	category.id_category = 1;
    
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
    
START TRANSACTION;
	INSERT INTO product_x_order
    VALUES
      (NULL, 1, 1, 10, 1, 1000, );
COMMIT;
