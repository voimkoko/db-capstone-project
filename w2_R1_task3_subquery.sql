select 
MenuName
from Menu
where MenuID = any (select MenuID from Orders where Quantity > 2);