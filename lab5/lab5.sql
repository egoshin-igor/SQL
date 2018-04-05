-- 2
EXPLAIN
SELECT medicine.name as medicine_name, company.name as company_name, pharmacy.name as pharmacy_name,
medicine_order.date, medicine_order.quantity FROM medicine_order
LEFT JOIN medicine ON medicine_order.id_medicine = medicine.id_medicine
LEFT JOIN medicine_manufacture ON medicine_order.id_medicine_manufacture = medicine_manufacture.id_medicine_manufacture
LEFT JOIN company ON medicine_manufacture.id_company = company.id_company
LEFT JOIN pharmacy ON medicine_order.id_pharmacy = pharmacy.id_pharmacy
WHERE medicine.name = 'Кордерон' AND company.name = 'Аргус';

-- 3
EXPLAIN
SELECT medicine.name as medicine_name, MIN(medicine_order.date) as date FROM medicine_order
LEFT JOIN medicine ON medicine_order.id_medicine = medicine.id_medicine
LEFT JOIN medicine_manufacture ON medicine_order.id_medicine_manufacture = medicine_manufacture.id_medicine_manufacture
LEFT JOIN company ON medicine_manufacture.id_company = company.id_company
WHERE company.name = 'Фарма'
GROUP BY medicine_name
HAVING date > '1.05.12';
-- 4
EXPLAIN
SELECT 
  company.name as company_name,
  MIN(medicine_manufacture.rating), 
  MAX(medicine_manufacture.rating),
  SUM(medicine_order.quantity) as quantity FROM medicine_order
LEFT JOIN medicine ON medicine_order.id_medicine = medicine.id_medicine
LEFT JOIN medicine_manufacture ON medicine_order.id_medicine_manufacture = medicine_manufacture.id_medicine_manufacture
LEFT JOIN company ON medicine_manufacture.id_company = company.id_company
GROUP BY company_name
HAVING quantity > 100;

-- 5

EXPLAIN
SELECT pharmacy.name as pharmacy_name, company.name as company_name FROM medicine_order
RIGHT JOIN company_dealer ON medicine_order.id_company_dealer = company_dealer.id_company_dealer
LEFT JOIN company ON company_dealer.id_company = company.id_company
LEFT JOIN pharmacy ON medicine_order.id_pharmacy = pharmacy.id_pharmacy
WHERE company.name = 'Гедеон Рихтер';

-- 6

EXPLAIN
UPDATE medicine_manufacture, medicine
SET medicine_manufacture.price = medicine_manufacture.price * 0.8
WHERE (medicine_manufacture.id_medicine = medicine.id_medicine and medicine.treatment_duration <= 7)
       AND medicine_manufacture.price > 3000;
