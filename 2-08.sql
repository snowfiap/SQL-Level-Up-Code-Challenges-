-- Create two reports about book statistics.

-- Report 1: Show how many titles were published in each year.

SELECT Published, COUNT(DISTINCT(Title)) 
FROM Books 
GROUP BY Published;

-- Report 2: Show the five books that have been checked out the most.

SELECT COUNT(Loans.LoanID),Books.Title 
FROM Loans 
JOIN Books ON Loans.BookID=Books.BookID 
GROUP BY Books.Title 
LIMIT 5;--five books so limit is 5--



