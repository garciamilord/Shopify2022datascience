/*a. How many orders were shipped by Speedy Express in total?*/
SELECT COUNT(*) FROM Orders
JOIN Shippers ON Shippers.ShipperID = Orders.ShipperID
WHERE Shippers.ShipperName = 'Speedy Express';

/* The total count is 54.*/

/*b. What is the last name of the employee with the most orders?*/
SELECT Employees.LastName, Count() AS num_orders FROM Orders
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY Employees.LastName ORDER BY num_orders DESC;
/* This happens to be Peacock with 40 orders.*/

