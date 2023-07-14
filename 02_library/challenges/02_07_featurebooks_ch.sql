-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

select
  b.Barcode,
  b.Title,
  b.Author
from
  books b
where
  b.Published between 1890 and 1900
  and b.BookID not in (
  select
    l.BookID
  from
    loans l
  where
    l.ReturnedDate is null
)
order by b.Title asc