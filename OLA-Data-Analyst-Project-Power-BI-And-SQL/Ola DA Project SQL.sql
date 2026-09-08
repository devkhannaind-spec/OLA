create database Ola;
use Ola;

select * from bookings ;


#-----> 1. Retrieve all successful bookings:
create view  Success_Booking as
select * from bookings 
where Booking_Status="Success";

#-----> Retrieve all successful bookings:
select * from Success_Booking;


