-- Task 1 
-- In this first task, you need to create anew procedure called AddBooking to add a new table booking record.
-- The procedure should include four input parameters in the form of the following bookings parameters:
-- booking id
-- customer id
-- booking date
-- and table number

DELIMITER //
CREATE PROCEDURE AddBooking(IN Booking_id INT, IN Booking_date DATETIME, IN Customer_id INT, IN Table_Number INT)
BEGIN
	INSERT INTO Bookings(BookingID, Date, CustomerID, TableNumber) VALUES (Booking_id, Booking_date, Customer_id, Table_Number);
    SELECT "New booking added" AS "Confirmation";
END //
DELIMITER ;
CALL AddBooking(7, "2023-09-10", 7, 10); 