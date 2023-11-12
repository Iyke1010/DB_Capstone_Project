-- Task 2
-- From your second task, Little Lemon need you to create a stored procedure called CheckBooking to check whether 
-- a table in the restaurant is already booked. Creating this procedure helps to minimize the effort involved 
-- in repeatedly coding the same SQL statements.
-- The procedure should have two input parameters in the form of booking date and table number. You can also create 
-- a varible in the procedure to check the status of each table.
DELIMITER //
CREATE PROCEDURE CheckBooking( IN booking_date DATETIME, IN table_number INT)
BEGIN
	DECLARE bookedTable INT DEFAULT 0;
	SELECT COUNT(bookedTable) INTO bookedTable 
    FROM Bookings WHERE Date = booking_date AND TableNumber = table_number;
	IF bookedTable > 0 THEN SELECT CONCAT("Table ", table_number, " is already booked") AS "Booking Status";
		ELSE
    SELECT CONCAT("Table ", table_number, " is not booked") AS "Booking Status";
	END IF;
END //
DELIMITER ;
CALL CheckBooking("2023-09-15", 6);