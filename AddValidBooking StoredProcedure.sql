DELIMITER //
CREATE PROCEDURE AddValidBooking(IN Booking_Date DATETIME, IN Table_Number INT)
BEGIN
DECLARE bookingExists INT DEFAULT 0;
START TRANSACTION; -- check if the table is already booked on the given date
SELECT COUNT(*) INTO bookingExists FROM Bookings WHERE Date = Booking_Date AND TableNumber = Table_Number;
IF bookingExists > 0 THEN -- Table is already booked, rollback the transaction
	ROLLBACK;
	SELECT CONCAT("Table ", Table_Number, " is already booked: booking cancelled!") AS "Booking Status";
ELSE -- Table is available, add a new booking
    INSERT INTO Bookings (Date, TableNumber) VALUES (Booking_Date, Table_Number);
    COMMIT;
    SELECT "booking successful" AS "Booking Status";
END IF;
END //
DELIMITER ;
CALL AddValidBooking("2023-09-19", 1);