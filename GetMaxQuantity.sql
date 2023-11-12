-- Task 1
-- In this first task, Little Lemon need you to create a procedure that displays the maximum ordered quantity 
-- in the Orders table.
-- Creating this procedure will aloww Little Lemon to resuse the logic implemented in the procedure easily
-- without retyping the same code over agaain and again to check the maximum quantity.

CREATE PROCEDURE GetMaxQuantity() 
SELECT MAX(Quantity) AS "Max Quantity in Order" FROM orders;

CALL GetMaxQuantity(); 