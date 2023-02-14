drop procedure if exists AddBooking;
delimiter //
/* BookingID is set as auto-increment, therefore, it is not required in the statement */
create procedure AddBooking(in dateinput date, in tablenumberinput int, in customeridinput int)
begin
insert into Bookings (BookingDate,TableNumber,CustomerID) values (dateinput, tablenumberinput, customeridinput);
select "New booking added" as "Confirmation";
end //
delimiter ;

