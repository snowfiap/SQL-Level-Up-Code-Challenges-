-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't be able to keep his Friday reservation. 
-- Today is July 24, 2022.

--Find the CustomerID--
SELECT CustomerID FROM Customers
WHERE FirstName='Norby';--CustomerID=64--

--checking the Reservation details--
SELECT * FROM Reservations
WHERE CustomerID='64' AND Date>'2022-07-24';--The ReservationID is 2000 now we need to delete the Reservation--

DELETE FROM Reservations
WHERE ReservationID='2000';

--checking whether deleted or not--
SELECT * FROM Reservations
WHERE ReservationID='2000';
--no result therefore it is successfully deleted--