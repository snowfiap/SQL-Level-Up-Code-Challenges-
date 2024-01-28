-- There are four people in the party. Today is June 14th.-- Find the reservation information for a customer whose  name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

SELECT Customers.CustomerID,Customers.FirstName,Customers.LastName,Reservations.ReservationID,Reservations.Date,Reservations.PartySize
FROM Reservations 
JOIN Customers ON Customers.CustomerID=Reservations.CustomerID 
WHERE Customers.LastName LIKE 'St%' AND Reservations.PartySize='4'
ORDER BY Reservations.Date DESC;--The name is Paco Stephenson--

