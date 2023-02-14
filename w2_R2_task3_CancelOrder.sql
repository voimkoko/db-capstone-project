delimiter //
create procedure CancelOrder(OrderIDinput int)
begin
delete from Orders where OrderID = OrderIDinput;
select concat("Order ",OrderIDinput, " is cancelled") as Confirmation;
end //
delimiter ;
