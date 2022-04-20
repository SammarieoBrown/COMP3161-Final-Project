

use dealership;

/* ----------------- Ques. 1 ------------------*/


select *
from car
where serialNum in
(select serialnum
from vehicle
where year <= '2018');

/* ----------------- Ques. 2 ------------------*/

select min(total) as MinInvoice
FROM vehicleinvoice;

select max(total) AS MaxInvoice
from vehicleinvoice;

/* ----------------- Ques. 3 ------------------*/

select *
from car
where serialNum in
(select serialnum
from vehicleinvoice
where date <= '2021/12/01');


/* ----------------- Ques. 4 ------------------*/

select avg(estimatedValue) as "Average Price",
car.carId as "Car ID", car.carColor as "Car Colour",
car.fuelType as "Fuel", car.numDoors as "No. of Door",
vehicle.make as "Vehicle Make", vehicle.year as "Year",
vehicle.model as "Model Car"
From car, vehicle
Where car.serialNum = vehicle.serialNum
Group By Car.CarId;

/* ----------------- Ques. 4 pt. below avg ------------------*/
select estimatedValue > (select avg(estimatedValue) from vehicle) as " Below Average Price",
car.carId as "Car ID", car.carColor as "Car Colour",
car.fuelType as "Fuel", car.numDoors as "No. of Door",
vehicle.make as "Vehicle Make", vehicle.year as "Year",
vehicle.model as "Model Car"
From car, vehicle
Where car.serialNum = vehicle.serialNum
Group By Car.CarId;



/* ----------------- Ques. 5 ------------------*/


Delete From vehicleparts
Where year = '2020'
order by serialNum LIMIT 8;



/* ----------------- Ques. 6 ------------------*/

Update vehicle
set estimatedValue = estimatedValue * 1.23
where make = 'Honda';



