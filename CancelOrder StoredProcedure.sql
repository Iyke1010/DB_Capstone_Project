-- Task 3
-- Your third and final task os to create a stored procedure called CancelOrder. Little Lemon want to use this 
-- stored procedure to delete an order record based on the user input of the order id.
-- Creating this procedure will allow Little Lemon to cancel any order by specifying the order id value in the 
-- procedure parameter without typing the entire SQL delete statement.

DELIMITER //
CREATE PROCEDURE CancelOrder(IN inputOrderID INT)
BEGIN
	DELETE FROM Orders WHERE OrderID = inputOrderID;
END //
DELIMITER ;

CALL CancelOrder(3);