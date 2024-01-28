--1.Determine how many copies of the book 'Dracula' are available for library patrons to borrow.

SELECT COUNT(Books.Title) 
FROM Books 
WHERE Books.Title = 'Dracula';-- total Count of the book is 3--


--2.Calculating the number of books borrowed--

SELECT COUNT(Books.Title)
FROM Loans
JOIN Books ON Loans.BookID=Books.BookID
WHERE Books.Title='Dracula' AND Loans.ReturnedDate IS NULL;--count is 1--


--Therefore the available copies is 3-1=2 OR we can calculate by the following query--
SELECT(SELECT COUNT(Books.Title) 
FROM Books 
WHERE Books.Title = 'Dracula')--count is 2-- 
- --Subtracting--
(SELECT COUNT(Books.Title)
FROM Loans
JOIN Books ON Loans.BookID=Books.BookID
WHERE Books.Title='Dracula' AND Loans.ReturnedDate IS NULL)--count is 1--
AS availablecopies;--renaming the field--

