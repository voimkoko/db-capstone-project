prepare GetOrderDetail from
'select OrderID, Quantity, TotalCost from Orders where CustomerID = ?';
set @id = 1;
execute GetOrderDetail using @id;