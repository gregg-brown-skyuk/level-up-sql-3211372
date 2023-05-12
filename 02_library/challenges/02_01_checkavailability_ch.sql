-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

-- all copies
with draculas as (select b.BookID
from books b
where b.Title = 'Dracula'),

loaned as (select d.BookID, max(l.LoanID) loanID, l.ReturnedDate
from draculas d
join loans l on d.BookID = l.BookID
group by l.BookID)

select count(*) AvailableCopies
from loaned l 
where l.ReturnedDate is not null;