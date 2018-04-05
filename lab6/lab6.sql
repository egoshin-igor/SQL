USE lab6;

-- 1
SELECT client.full_name, client.phone FROM room_in_booking
LEFT JOIN room ON room_in_booking.id_room = room.id_room
LEFT JOIN hotel ON hotel.id_hotel = room.id_hotel
LEFT JOIN room_kind ON room_kind.id_room_kind = room.id_room_kind
LEFT JOIN booking ON booking.id_booking = room_in_booking.id_booking
LEFT JOIN client ON client.id_client = booking.id_client
WHERE
	hotel.name = "Алтай" AND room_kind.name = "Люкс" AND room_in_booking.arrival_date <= now()
    AND room_in_booking.departure_date >= now();

-- 2
SELECT DISTINCT hotel.name, room.room_number FROM room_in_booking
RIGHT JOIN room ON room_in_booking.id_room = room.id_room
LEFT JOIN hotel ON hotel.id_hotel = room.id_hotel
WHERE
	"2012-05-30" NOT BETWEEN room_in_booking.arrival_date AND room_in_booking.departure_date OR room_in_booking.id_room is NULL;
    
-- 3
SELECT COUNT(room_in_booking.id_room_in_booking) FROM room_in_booking
LEFT JOIN room ON room_in_booking.id_room = room.id_room
LEFT JOIN hotel ON hotel.id_hotel = room.id_hotel
WHERE
	hotel.name = "Восток" AND "2012-05-25" >= room_in_booking.arrival_date AND "2012-05-25" <= room_in_booking.departure_date;
    
-- 4