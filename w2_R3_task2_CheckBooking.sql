drop procedure if exists CheckBooking;
create procedure CheckBooking(in dateinput date, in tablenumberinput int)
select 
case 
when exists (select count(*) as C from Bookings where BookingDate = dateinput and TableNumber = tablenumberinput having C > 0) then concat("Table ", tablenumberinput ," is already booked")
/*else concat("Table ", tablenumberinput , " is not booked")*/
end as "Booking status"
