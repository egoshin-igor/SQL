use lab3_4;

-- 1.
SELECT type, name FROM `hardware`
ORDER BY name;

SELECT type, name FROM `hardware`
ORDER BY name DESC;

SELECT type, name FROM `hardware`
ORDER BY type DESC, name DESC;

SELECT type, name FROM `hardware`
ORDER BY 1 DESC;

-- для 2 заполняю базу
INSERT INTO `computer`
VALUES
	(NULL, 'ASUS ASPIRE LA LA', 1, 60000.6),
    (NULL, 'INTEL QQWRT', 1, 25000),
    (NULL, 'ASER 123', 2, 40000),
    (NULL, 'PACKARD BELL', 2, 48000);
--
-- 2.
SELECT MIN(price) FROM `computer`;

SELECT MAX(price) FROM `computer`;

SELECT AVG(price) FROM `computer`;

SELECT SUM(price) FROM `computer`;

-- 3.

-- узнаю максимальную цену у разных типов компьютеров
SELECT id_computer_type, MAX(price) FROM `computer`
GROUP BY id_computer_type;

-- узнаю максимальную цену у разных типов компьютеров с ценой больше 500
SELECT id_computer_type, MAX(price) FROM `computer`
GROUP BY id_computer_type
HAVING AVG(price) > 500;

SELECT * FROM `computer`;