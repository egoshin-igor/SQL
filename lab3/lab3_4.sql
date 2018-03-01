use lab3_4;

-- 1.
INSERT INTO `computer`
VALUES
	(NULL, 'ASUS ASPIRE LA LA', 2, 60000.6);
    
INSERT INTO `computer`
	(name, id_computer_type, price)
VALUES
	('Mark 1', 1, 100000);

INSERT INTO `computer`
	(name, id_computer_type, price)
SELECT name, id_hardware, quantity
FROM `hardware`;

-- 2.
DELETE FROM `computer`;

DELETE FROM `equipment`
WHERE id_computer BETWEEN 1 AND 2;

TRUNCATE TABLE `computer`;

-- 3.
UPDATE `computer_type`
SET type = 'PC';

UPDATE `hardware`
SET type = 'storage device'
WHERE quantity > 100;

UPDATE `hardware`
SET type = 'storage device',
	manufacturer = manufacturer + 1
WHERE type LIKE 'C%';

UPDATE `hardware`
SET type = 'CPU',
	manufacturer = manufacturer + 1
WHERE id_hardware >= 3;

-- 4.
SELECT type, name FROM `hardware`;

SELECT * FROM `hardware`;

SELECT * FROM `hardware`
WHERE type = 'CPU';