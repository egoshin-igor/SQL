-- 1
SELECT computer.name, computer_type.type FROM computer
LEFT JOIN computer_type
ON computer.id_computer_type = computer_type.id_computer_type
WHERE computer_type.type = 'laptop';

-- 2
SELECT computer.name, computer_type.type FROM computer_type
RIGHT JOIN computer
ON computer_type.id_computer_type = computer.id_computer_type
WHERE computer_type.type = 'laptop';

-- 3
SELECT computer.name, computer.price, computer_type.type FROM computer_type
RIGHT JOIN computer
ON computer_type.id_computer_type = computer.id_computer_type
WHERE computer.price > 20000 and computer.name LIKE '%ASUS%';

-- 4
SELECT computer.name, computer_type.type FROM computer_type
RIGHT JOIN computer
ON computer_type.id_computer_type = computer.id_computer_type
WHERE computer_type.type = 'laptop' and computer.name LIKE '%ASUS%';

-- 5
SELECT computer.name, computer.price FROM equipment
LEFT JOIN computer ON equipment.id_computer = computer.id_computer
LEFT JOIN hardware ON equipment.id_hardware = hardware.id_hardware
WHERE computer.price > 20000 and equipment.id_hardware < 3 and hardware.type = 'CPU';
