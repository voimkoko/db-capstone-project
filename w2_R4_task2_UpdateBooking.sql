drop procedure if exists UpdateBooking;
delimiter //
create procedure UpdateBooking(in bookingidinput int, in dateinput date)
begin
update Bookings set BookingDate = dateinput where BookingID = bookingidinput;
select concat("Booking ", bookingidinput , " updated") as "Confirmation";
end //
delimiter ;

