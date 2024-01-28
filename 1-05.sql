-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC, has moved to 74 Pine St., New York, NY.

--First we need to check how many Taylor Jenkins are in the ustomers table then we need to find the CustomerID and make changes for the updation--]
SELECT * FROM Customers
WHERE FirstName='Taylor' AND LastName='Jenkins'; --we need to change the address of Taylor Jenkins in ID 26--

--Updating the address--
UPDATE Customers
SET Address='74 Pine St.',City='New York',State='NY'
WHERE CustomerID='26';

--checking whether the address is updated or not--
SELECT * FROM Customers
WHERE CustomerID='26';



