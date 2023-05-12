-- Prepare a report of the library patrons
-- who have checked out the fewest books.

WITH LC AS
(SELECT p.FirstName, p.LastName, p.Email, COUNT(l.LoanID) as LoanCount
FROM Patrons p
JOIN Loans l ON p.PatronID = l.PatronID
GROUP BY p.FirstName, p.LastName)
SELECT * FROM LC
WHERE LC.LoanCount = (SELECT MIN(LoanCount) FROM LC)