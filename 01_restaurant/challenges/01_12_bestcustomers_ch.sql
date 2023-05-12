-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.
with ordercount as (select o.CustomerID, count(o.OrderID) as ordercount
from orders o
group by o.CustomerID
having ordercount >= 14)
select c.FirstName, c.LastName, c.Email, oc.ordercount 
from customers c, ordercount oc
where c.CustomerID = oc.CustomerID
order by oc.ordercount desc;