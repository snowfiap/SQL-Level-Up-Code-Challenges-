-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in attendance, and will bring 3 friends.

--1.Checking the CustomerID of the person with the given Email--
SELECT CustomerID FROM Customers
WHERE Email='atapley2j@kinetecoinc.com';--The CustomerID is found to be 92--

--2.Updating the CustomerResponse table by adding the given information--
INSERT INTO CustomerResponse(CustomerID,NoOfPeople)
VALUES (92,3);

--3.Checking whether it is updaed or not--
SELECT * FROM CustomerResponse;
--The values are updated--