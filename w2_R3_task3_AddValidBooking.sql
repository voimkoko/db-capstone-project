drop procedure if exists AddValidBooking;
delimiter //
/* CustomerID field in Bookings requires existing Customer for foreign key purpose */
create procedure AddValidBooking(in dateinput date, in tablenumberinput int, in customeridinput int)
begin
declare bookstatus boolean;
select exists (select count(*) as C from Bookings where BookingDate = dateinput and TableNumber = tablenumberinput having C > 0) into bookstatus;
start transaction;
if bookstatus = 0 then 
    /* BookingID is set as auto-increment, therefore, it is not required in the statement */
	insert into Bookings (BookingDate,TableNumber,CustomerID) values (dateinput, tablenumberinput, customeridinput);
	select concat("Table ", tablenumberinput ," has booked now") as "Booking status";
	commit;
else
	select concat("Table ", tablenumberinput ," is already booked" ," - booking cancelled") as "Booking status";
	rollback;
end if;
end //
delimiter ;

