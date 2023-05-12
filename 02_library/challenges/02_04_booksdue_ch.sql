-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT
  p.FirstName,
  p.LastName,
  p.Email,
  b.Title,
  b.Author
FROM
  Patrons p, Books b, Loans l
WHERE
  b.BookID = l.BookID
AND
  p.PatronID = l.PatronID
AND
  l.DueDate = '2022-07-13'
AND
  l.ReturnedDate IS NULL;