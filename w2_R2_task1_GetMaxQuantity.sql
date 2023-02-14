create procedure GetMaxQuantity()
select 
max(Quantity)
from Orders;