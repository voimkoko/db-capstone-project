drop procedure if exists CancelBooking;
delimiter //
create procedure CancelBooking(in bookingidinput int)
begin
delete from Bookings where BookingID = bookingidinput;
select concat("Booking ", bookingidinput , " cancelled") as "Confirmation";
end //
delimiter ;

