create database Ola;
use Ola;

select * from bookings ;


#-----> 1. Retrieve all successful bookings:
create view  Success_Booking as
select * from bookings 
where Booking_Status="Success";

#-----> Retrieve all successful bookings:
select * from Success_Booking;


#-----> 2. Find the average ride distance for each vehicle type:
create view average_ride_distance_for_each_vehicle as
select Vehicle_Type,AVG(Ride_Distance) as booking
from bookings 
group by Vehicle_Type;

#-----> 2. Find the average ride distance for each vehicle type:
select * from average_ride_distance_for_each_vehicle;

#-----> 3. Get the total number of cancelled rides by customers:
create view  number_of_cancelled_rides as
SELECT COUNT(*) FROM bookings 
WHERE Booking_Status = 'Canceled by Customer';

#-----> Retrieve all successful bookings:
select * from number_of_cancelled_rides;

