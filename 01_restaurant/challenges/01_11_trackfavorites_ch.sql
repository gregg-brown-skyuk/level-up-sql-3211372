-- Update information in the database.
-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

select d.DishID
from dishes d
where d.Name = 'Quinoa Salmon Salad';

update customers
set FavoriteDish = 9
where CustomerID = 42;

select
  c.CustomerID,
  c.FirstName,
  c.LastName,
  d.DishID,
  d.Name
from
  customers c,
  Dishes d
where
  c.FavoriteDish = d.DishID
  and c.FirstName = 'Cleo';