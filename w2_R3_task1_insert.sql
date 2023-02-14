/* CustomerID field in Bookings requires existing Customer for foreign key purpose */
insert into Customer (FullName,ContactNumber,Email) values
("A","666","A@littlelemon.com"),
("B","667","B@littlelemon.com"),
("C","668","C@littlelemon.com");


/* BookingID is set as auto-increment, therefore, it is not required in the statement */
insert into Bookings (BookingDate,TableNumber,CustomerID) values
("2022-10-10",5,1),
("2022-11-12",3,3),
("2022-10-11",2,2),
("2022-10-13",2,1);

select * from Bookings;
