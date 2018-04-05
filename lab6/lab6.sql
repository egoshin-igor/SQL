USE lab6;

-- 2 Выдать информацию о клиентах гостиницы “Алтай”, проживающих в номерах категории “люкс”.
SELECT client.full_name, client.phone FROM room_in_booking
LEFT JOIN room ON room_in_booking.id_room = room.id_room
LEFT JOIN hotel ON hotel.id_hotel = room.id_hotel
LEFT JOIN room_kind ON room_kind.id_room_kind = room.id_room_kind
LEFT JOIN booking ON booking.id_booking = room_in_booking.id_booking
LEFT JOIN client ON client.id_client = booking.id_client
WHERE
	hotel.name = "Алтай" AND room_kind.name = "Люкс" AND room_in_booking.arrival_date <= now()
    AND room_in_booking.departure_date >= now();

-- 3 Дать список свободных номеров всех гостиниц на 30.05.12.
SELECT DISTINCT hotel.name, room.room_number FROM room_in_booking
RIGHT JOIN room ON room_in_booking.id_room = room.id_room
LEFT JOIN hotel ON hotel.id_hotel = room.id_hotel
WHERE
	"2012-05-30" NOT BETWEEN room_in_booking.arrival_date AND room_in_booking.departure_date OR room_in_booking.id_room is NULL;
    
-- 4 Дать количество проживающих в гостинице “Восток” на 25.05.12 по каждому номеру
SELECT room.room_number, COUNT(room_in_booking.id_room) FROM room_in_booking
RIGHT JOIN room ON room_in_booking.id_room = room.id_room
LEFT JOIN hotel ON hotel.id_hotel = room.id_hotel
WHERE
	hotel.name = "Восток" AND ("2012-05-25" >= room_in_booking.arrival_date
    AND "2012-05-25" <= room_in_booking.departure_date OR room_in_booking.id_room is NULL)
GROUP BY
	room.room_number
ORDER BY
	room.room_number;
    
-- 5 Дать список последних проживавших клиентов по всем комнатам гостиницы “Космос”, выехавшим в апреле 2012 с указанием даты выезда. 
DROP TABLE aprils_clients;
CREATE TEMPORARY TABLE aprils_clients AS (
SELECT room.id_room as id_room, MAX(room_in_booking.departure_date) as departure_date FROM room_in_booking
LEFT JOIN room ON room_in_booking.id_room = room.id_room
LEFT JOIN hotel ON hotel.id_hotel = room.id_hotel
LEFT JOIN booking ON booking.id_booking = room_in_booking.id_booking
LEFT JOIN client ON client.id_client = booking.id_client
WHERE
	hotel.name = "Космос" AND room_in_booking.departure_date BETWEEN "2012-04-01" AND "2012-04-31"
GROUP BY room.id_room
);
SELECT client.full_name, client.phone, aprils_clients.departure_date FROM aprils_clients
LEFT JOIN room_in_booking ON room_in_booking.id_room = aprils_clients.id_room
LEFT JOIN booking ON booking.id_booking = room_in_booking.id_booking
LEFT JOIN client ON client.id_client = booking.id_client;
-- 6 Продлить до 30.05.12 дату проживания в гостинице “Сокол” всем клиентам комнат категории “люкс”, которые заселились 15.05.12, а выезжают 28.05.12
UPDATE room_in_booking
LEFT JOIN room ON room_in_booking.id_room = room.id_room
LEFT JOIN room_kind ON room_kind.id_room_kind = room.id_room_kind
LEFT JOIN hotel ON hotel.id_hotel = room.id_hotel
SET room_in_booking.departure_date = "2012-05-30"
WHERE
	hotel.name = "Сокол" AND room_kind.name = "Люкс" AND
    room_in_booking.departure_date = "2012-05-28" AND room_in_booking.arrival_date = "2012-05-12";

-- 7 Привести пример транзакции при создании брони.
START TRANSACTION;
SELECT @id_room := 3;

INSERT INTO booking VALUES (NULL, @id_room, "2014-05-28");
SELECT @new_booking_id := LAST_INSERT_ID();
INSERT INTO room_in_booking VALUES (NULL, @new_booking_id, @id_room, "2014-05-28", "2014-05-30");
COMMIT;
