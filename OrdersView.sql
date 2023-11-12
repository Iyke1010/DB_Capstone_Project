-- Task 1
-- In the first task Little Lemon need you to create a virtual table called OrdersView that focuses on
-- OrderID, Quantity and Cost columns within the Orders table for all orders with a quantity greater than 2.
-- Here's some guidance around completing this task;
-- Use a CREATE VIEW statement
-- Extract the order id, quantit and cost data from the orders table
-- Filter data from the orders table based on oreders with a quantity reater than 2.
CREATE VIEW OrdersView AS
SELECT OrderID Quantity, TotalCost FROM Orders WHERE Quantity > 2;

SELECT * FROM OrdersView;