-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.
-- WITH newLoans AS (
-- )
INSERT INTO
  Loans (BookID, PatronID, LoanDate, DueDate)
SELECT
  b.BookID,
  p.PatronID,
  '2022-08-25' as LoanDate,
  '2022-09-08' as DueDate
FROM
  Books b,
  Patrons p
WHERE
  p.Email = 'jvaan@wisdompets.com'
  AND b.Barcode IN (2855934983, 4043822646);

SELECT
  *
FROM
  LOANS, Books
WHERE
  Loans.BookID = Books.BookID
AND
  PatronID = (
    SELECT
      PatronID
    FROM
      Patrons
    WHERE
      Email = 'jvaan@wisdompets.com'
  )
ORDER BY
  LoanID DESC;