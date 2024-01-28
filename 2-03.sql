-- Check out two books for Jack Vaan (jvaan@wisdompets.com)
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.


--inserting to loans table--
INSERT INTO Loans (BookID, PatronID, LoanDate, DueDate)
VALUES ((SELECT BookID 
			FROM Books 
			WHERE Barcode = '2855934983'), --BoookID--
		(SELECT PatronID 
			FROM Patrons 
			WHERE Email = 'jvaan@wisdompets.com'),--PatronID--
		'2022-08-25',--LoanDate--
		'2022-09-08');--DueDate--
		
		
INSERT INTO Loans (BookID, PatronID, LoanDate, DueDate)
VALUES ((SELECT BookID 
			FROM Books 
			WHERE Barcode = '4043822646'), --BoookID--
		(SELECT PatronID 
			FROM Patrons 
			WHERE Email = 'jvaan@wisdompets.com'),--PatronID--
		'2022-08-25',--LoanDate--
		'2022-09-08');--DueDate--

--checking--
SELECT PatronID FROM Patrons 
WHERE Email = 'jvaan@wisdompets.com';--PatronID is 50--

SELECT * FROM Loans
WHERE PatronID='50';
