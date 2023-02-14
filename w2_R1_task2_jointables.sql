select 
	Customer.CustomerID as CustomerID,
    FullName,
    OrderID,
    TotalCost,
    MenuName,
    CourseName
from Customer inner join Orders on Customer.CustomerID = Orders.CustomerID
inner join Menu on Orders.MenuID = Menu.MenuID 
inner join MenuItems on Menu.MenuItemsID = MenuItems.MenuItemsID
where TotalCost > 150
order by TotalCost asc;