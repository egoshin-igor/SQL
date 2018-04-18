use lab5;
DELETE FROM company;
ALTER TABLE company AUTO_INCREMENT = 1;
INSERT INTO company (name, foundation_year)
VALUES
	(concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand()*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1)), FLOOR(1980 + RAND()*37)),
    (concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand()*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1)), FLOOR(1980 + RAND()*37)),
    (concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand()*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1)), FLOOR(1980 + RAND()*37)),
    (concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand()*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1)), FLOOR(1980 + RAND()*37)),
    (concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand()*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1)), FLOOR(1980 + RAND()*37)),
    (concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand()*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1)), FLOOR(1980 + RAND()*37)),
    (concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand()*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1)), FLOOR(1980 + RAND()*37)),
    (concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand()*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1)), FLOOR(1980 + RAND()*37)),
    (concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand()*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1)), FLOOR(1980 + RAND()*37)),
    (concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand()*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1)), FLOOR(1980 + RAND()*37)),
    (concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand()*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1)), FLOOR(1980 + RAND()*37)),
    (concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand()*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1)), FLOOR(1980 + RAND()*37)),
    (concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand()*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1)), FLOOR(1980 + RAND()*37)),
    (concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand()*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1)), FLOOR(1980 + RAND()*37)),
    (concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand()*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1)), FLOOR(1980 + RAND()*37)),
    (concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand()*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1)), FLOOR(1980 + RAND()*37)),
    (concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand()*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1)), FLOOR(1980 + RAND()*37)),
    (concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand()*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1)), FLOOR(1980 + RAND()*37)),
    (concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand()*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed:=round(rand(@seed)*4294967296))*36+1, 1),substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789', rand(@seed)*36+1, 1)), FLOOR(1980 + RAND()*37));

DELETE FROM company_dealer;
ALTER TABLE company_dealer AUTO_INCREMENT = 1;

INSERT INTO company_dealer
VALUES
	(NULL,
    FLOOR(1 + RAND()*100),
    concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1)),
    concat('79', substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1))
    ),
    (NULL,
    FLOOR(1 + RAND()*100),
    concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1)),
    concat('79', substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1))
    ),
    (NULL,
    FLOOR(1 + RAND()*100),
    concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1)),
    concat('79', substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1))
    ),
    (NULL,
    FLOOR(1 + RAND()*100),
    concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1)),
    concat('79', substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1))
    ),
    (NULL,
    FLOOR(1 + RAND()*100),
    concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1)),
    concat('79', substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1))
    ),
    (NULL,
    FLOOR(1 + RAND()*100),
    concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1)),
    concat('79', substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1))
    ),
    (NULL,
    FLOOR(1 + RAND()*100),
    concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1)),
    concat('79', substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1))
    ),
    (NULL,
    FLOOR(1 + RAND()*100),
    concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1)),
    concat('79', substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1))
    ),
    (NULL,
    FLOOR(1 + RAND()*100),
    concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1)),
    concat('79', substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1))
    ),
    (NULL,
    FLOOR(1 + RAND()*100),
    concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1)),
    concat('79', substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1))
    );

DELETE FROM medicine;
ALTER TABLE medicine AUTO_INCREMENT = 1;

DELIMITER  //
CREATE PROCEDURE mypro ()
BEGIN
SET @counter = 0;
WHILE (@counter < 110) DO
INSERT INTO medicine
VALUES
	(NULL,
	concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1)),
	FLOOR(1 + RAND()*70));
SET @counter = @counter + 1;
END WHILE;
END//
DELIMITER ;
CALL mypro();
DROP PROCEDURE mypro;


DELETE FROM medicine_manufacture;
ALTER TABLE medicine_manufacture AUTO_INCREMENT = 1;

DELIMITER  //
CREATE PROCEDURE mypro ()
BEGIN
SET @counter = 0;
WHILE (@counter < 110) DO
INSERT INTO medicine_manufacture
VALUES
	(NULL,
	FLOOR(1 + RAND()*100),
    FLOOR(1 + RAND()*100),
    FLOOR(1 + RAND()*8000));
SET @counter = @counter + 1;
END WHILE;
END//
DELIMITER ;
CALL mypro();
DROP PROCEDURE mypro;


DELETE FROM medicine_order;
ALTER TABLE medicine_order AUTO_INCREMENT = 1;

DELIMITER //
CREATE PROCEDURE mypro ()
BEGIN
SET @counter = 0;
WHILE (@counter < 110) DO
INSERT INTO medicine_order
VALUES
	(NULL,
	FLOOR(1 + RAND()*100),
    FLOOR(1 + RAND()*100),
    FLOOR(1 + RAND()*100),
    NOW() - INTERVAL FLOOR(RAND() * 14) DAY,
    FLOOR(1 + RAND()*6000));
SET @counter = @counter + 1;
END WHILE;
END//
DELIMITER ;
CALL mypro();
DROP PROCEDURE mypro;

DELETE FROM pharmacy;
ALTER TABLE pharmacy AUTO_INCREMENT = 1;

DELIMITER //
CREATE PROCEDURE mypro ()
BEGIN
SET @counter = 0;
WHILE (@counter < 110) DO
INSERT INTO pharmacy
VALUES
	(NULL,
	concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1)),
	concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1)),
	concat(substring('ABCDEFGHIJKLMNOPQRSTUVWXYZ', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1), substring('abcdefghijklmnopqestuvwxyz', FLOOR(1 + RAND()*26), 1))
    );
SET @counter = @counter + 1;
END WHILE;
END//
DELIMITER ;
CALL mypro();
DROP PROCEDURE mypro;

INSERT INTO company
VALUES
	(NULL, "Гедеон Рихтер", 2011);
    
UPDATE company_dealer
SET id_company = 193
WHERE id_company_dealer between 1 AND 14;
    
    
UPDATE medicine_manufacture
SET id_company = 192
WHERE id_medicine_manufacture between 77 AND 99;

INSERT INTO medicine
VALUES
	(NULL, "Кордерон", 5);

INSERT INTO medicine_manufacture
VALUES
	(NULL, 191, 33, 2100, 8);

INSERT INTO medicine_order
VALUES
	(NULL, 111, 23, 111, NOW() - INTERVAL FLOOR(RAND() * 14) DAY, 300);

INSERT INTO pharmacy
VALUES
	(NULL, "Ляля", "Главная", "Дом 42");