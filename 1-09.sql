-- Create a reservation for a customer who may or may not already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people on August 12, 2022 at 6PM (18:00)

--Checking whether the person is in Customers table or not--
SELECT  * FROM Customers
WHERE FirstName='Sam' AND LastName='McAdams' AND Email='smac@kinetecoinc.com';

--customer is not available ,so add it--
INSERT INTO Customers(FirstName,LastName,Email)
VALUES ('Sam','McAdams','smac@kinetecoinc.com');
--ADDED--

--checking it--
SELECT  * FROM Customers
WHERE FirstName='Sam' AND LastName='McAdams' AND Email='smac@kinetecoinc.com';
--Available--

--Now Reservation takes place with the given details--
INSERT INTO Reservations(CustomerID,Date,PartySize)
VALUES ('101','2022-08-12 18:00:00','5');
--INSERTED--

--checking--
SELECT * FROM Reservations
WHERE CustomerID='101';




