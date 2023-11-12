-- Task 2 
-- In the second task, Little Lemon need you to help them to create a prepared statement called GetOrderDetail.
-- This prepared statement will help to reduce the parsing time of queries. it will also help to secure 
-- the database from SQL injections.
-- The prepared statement should accept one input argument, the CustomerID value, from a variable.
-- The statement should return the order id, the quantity and the order cost from the Orders table.
-- Once you ceate the prepared statement, you can create a variable called id and assign it value of 1.
-- Then execute the GetOrderDetail prepared statement using the following syntax:
-- EXECUTE GetOrderDetail USING @id;

PREPARE GetOrderDetail FROM 'SELECT OrderID, Quantity, TotalCost FROM Orders WHERE OrderID = ?';

SET @id = 1;
EXECUTE GetOrderDetail USING @id;


