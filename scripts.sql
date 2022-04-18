
Create database dealership;
Use dealership;

Create table Manufacturer(
    ManuID varchar(10) not null,
    name varchar(55),
    phoneNum varchar(10),
    address varchar(255),
    Primary Key(ManuID)
);

Create table Vehicle(
    serialNum varchar(10) not null,
    model varchar(55),
    year varchar(4),
    estimatedValue decimal(10,2), 
    make varchar(55),
    Primary Key(serialNum)

);

Create table Vendor(
    vendorID varchar(10) not null,
    name varchar(55),
    phoneNum varchar(10),
    address varchar(255),
    Primary Key(vendorID)
);

Create table Car(
    serialNum varchar(10),
    carID varchar(10) not null,
    carColor varchar(25),
    fuelType varchar(10),
    numDoors int,
    ManuID varchar(10),
    vendorID varchar(10),
    Primary Key(carID),
    Foreign Key(ManuID) references manufacturer(ManuID),
    Foreign Key(vendorID) references Vendor(vendorID),
    Foreign Key(serialNum) references Vehicle(serialNum)
);

Create table Bike(
    serialNum varchar(10),
    bikeID varchar(10) not null,
    bikeColor varchar(25),
    fuelType varchar(10),
    numDoors int,
    ManuID varchar(10),
    vendorID varchar(10),
    Foreign Key(ManuID) references manufacturer(ManuID),
    Foreign Key(vendorID) references Vendor(vendorID),

    Primary Key(bikeID),
    Foreign Key(serialNum) references Vehicle(serialNum)
);

Create table truck(
    serialNum varchar(10),
    truckID varchar(10) not null,
    truckColor varchar(25),
    fuelType varchar(10),
    numDoors int,
    ManuID varchar(10),
    vendorID varchar(10),
    Foreign Key(ManuID) references manufacturer(ManuID),
    Primary Key(truckID),
    Foreign Key(serialNum) references Vehicle(serialNum)
);

Create Table VehicleParts(
    serialNum varchar(10),
    partID Varchar(10) not null,
    model Varchar(55),
    year varchar(4),
    name Varchar(55),
    ManuID varchar(10),
    vendorID varchar(10),
    Primary Key(partID),
    Foreign Key(vendorID) references Vendor(vendorID),
    Foreign Key(serialNum) REFERENCES Vehicle(serialNum),
    Foreign Key(ManuID) REFERENCES Manufacturer(ManuID)
    );



Create table Mechanic(
    mechanicID varchar(10) not null,
    name varchar(55),
    phoneNum varchar(10),
    address varchar(255),
    Primary Key(mechanicID)
);

Create table Customer(
    customerID varchar(10) not null,
    name varchar(55),
    phoneNum varchar(10),
    address varchar(255),
    Primary Key(customerID)
);

Create table VehicleInvoice(
    invoiceNum varchar(10) not null,
    serialNum varchar(10),
    date date,
    total decimal(10,2)
    );




----------------- Insert into manufacturer  table ------------------

insert into manufacturer(manuid, name, phonenum, address)

VALUES
('5001', 'John Carl', '8762537291', '10 Christian Park'),
('5002', 'Micheal Jackson', '8769573859', '150 Laurel Street'),
('5003', 'Stu Clark', '8763729471', '88 New Kingston'),
('5004', 'Carl Beckford', '8766483267', '108 Ardenne Road'),
('5005', 'Paul Johnson', '876643234', '03 Papine South'),
('5006', 'Jermaine Nick', '8762447291', '102 Napal Park'),
('5007', 'Micheal Grey', '8765839573', '834 North Kings'),
('5008', 'Lisa Hanna', '8763820399', '2192 South Camp Rd'),
('5009', 'Lewis Lane', '8768473832', '10 King Street'),
('5010', 'Leslie Edwards', '8766439234', '32 Marcus Lane'),
('5011', 'Lucas Hunt', '8762548343', '98 Rosa Park'),
('5012', 'Everton Brown', '8769374922', '2 North Lane'),
('5013', 'Sophia Scott', '8763729471', '343 Elevator Path'),
('5014', 'Max Lords', '8766483267', '108 Camp Road'),
('5015', 'Nick Minaj', '8766432354', '03 Downtown ');

 ----------------- Insert into vehicle table ------------------

insert into vehicle(serialNum, model, year, estimatedValue, make) 
VALUES
---- CARS ----
('1000', 'A5', '2022', 1200000.29, 'Audi'),
('1010', 'Civic', '2020', 3500000.27, 'Honda'),
('1020', 'Vitz', '2009', 900000.93, 'Toyota'),
('1030', 'Accord', '2007', 1500000.00, 'Honda'),
('1040', 'Altima', '2012', 1050000.00, 'Nissan'),
('1050', 'fit', '2018',2500000.00 , 'Honda'),
('1060', 'R8', '2020',7000000.99, 'Audi'),
----BIKES----
('1070','CB Series','2009',500000.00,'Honda'),
('1080','Fury','2020',1500000.00,'Honda'),
('1090','Katana','2021',1000000.00,'Suzuki'),
('1100','GT250','2019',950000.00,'Suzuki'),
('1110','Avenis','2010',600000.00,'Suzuki'),
('1120','GSX','2012',800000.00,'Suzuki'),
('1130','Rita','2020',1500000.00,'Naza'),

---- TRUCKS----
('1140','Actros','2020',5000000.00,'Mercedes-Benz'),
('1150','MD26','2006',700000.00,'Bering'),
('1160','LD15A','2000',500000.00,'Bering'),
('1170','Tacoma','2002',1000000.00,'Toyota'),
('1180','Sierra','2021',4500000.00,'GMC'),
('1190','Model 367','2018',3000000.00,'Peterbilt'),
('1200','Model 220','2017',2900000.00,'Peterbilt');


 ----------------- Insert into Vendor table ------------------

insert into Vendor(vendorID, name, phoneNum, address)
VALUES

('7001', 'Carla March', '8768948588', '99 Highway Road'),
('7002', 'Morgan Freeman', '8767455216', '599 Mango Path'),
('7003', 'Eddie Campbell', '8769473567', '31 Portmore Pines'),
('7004', 'John Cena', '8762114415', '456 JamRock Center'),
('7005', 'Stephanie Zane', '8769775321', '1993 Lovelet Boulevard'),
('7006', 'Kimone March', '8766344276', '99 Uptown Park'),
('7007', 'Shelly Goodwin', '8768433421', '599 Applecider Ave'),
('7008', 'Victor Newman', '8766355142', '90 Boardwalk Center'),
('7009', 'Serena Williams', '87676342663', '976 AskPath Road'),
('7010', 'Tyson Kidd', '8766134253', '348 Mystic Road'),
('7011', 'Kareen Logan', '8768087436', '10 Middleton Road'),
('7012', 'Angelina Perry', '8767990912', '6275 Forbes Lane');


 ----------------- Insert into vehicleparts  table ------------------
insert into vehicleparts(serialNum, partID, year, name, ManuID, vendorID)
VALUES
('1200', '2000', '2017', 'Front Bumper', '5002',null),
('1040', '2001','2019', 'Tires', '5012',null),
('1030', '2002','2019', 'Exhaust', null,'7003'),
('1020', '2003','2020', 'Side View Mirror', '5012',null),
('1170', '2004','2020', 'Battery', '5010',null),
('1180', '2005','2017', 'Brakes',null,'7012'),
('1090', '2006','2019', 'Front Axle', '5001',null),
('1060', '2007','2019', 'Alternator', '5010',null),
('1140', '2008','2020', 'Radiator', '5012','7003'),
('1120', '2009','2017', 'Engine', '5003','7004'),
('1010', '2010', '2019', 'Transmission',null, '7001'),
('1110', '2011','2019', 'Muffler', null,'7010');

----------------- Insert into vehicle Invoice  table ------------------
insert into VehicleInvoice(invoiceNum, serialNum, date, total)
VALUES
('1301','1000','2020-10-01',1150000.00),
('1302','1140','2021-01-20',5000000.00),
('1303','1030','2020-09-12',1500000.00),
('1304','1200','2020-11-09',2800000.00),
('1305','1110','2021-08-08',580000.00),
('1306','1020','2020-09-01',900001.00),
('1307','1090','2020-03-07',1000000.00),
('1308','1100','2021-04-22',600000.00),
('1309','1040','2020-06-06',1000000.00),
('1310','1130','2022-03-12',1500000.00),
('1311','1080','2021-08-19',1500000.00),
('1312','1050','2020-12-25',2500000.00);

----------------- Insert into mechanic table ------------------
insert into mechanic(mechanicID, name, phoneNum, address) 
VALUES
('8001', 'Paul Smith', '8765483443', '45 Seesaw Road'),
('8002', 'Nick Carter', '8769467483', '2 Fly High Street'),
('8003', 'Vince Parks', '8769456382', '901 Evergreen Lane'),
('8004', 'Erica Banks', '8768494755', '123 Sycamore Circle'),
('8005', 'Mary Brown', '8767529027', '123 Seesaw Circle'),
('8006', 'Paul Smith', '8763689263', '57 Marylee Way'),
('8007', 'Johnny Champa', '8768776548', '10 Alma District'),
('8008', 'Sharon Gray', '8769001657', '10 Little London'),
('8009', 'Abigayle Wright','8769255100', '0990 Jet Path'),
('8010', 'Joel Smart', '8766094720', '89 Wintek Road'),
('8011', 'Dayvon Reid', '8768900956', '10 Pathway Garden'),
('8012', 'Durk Royale', '8763037732', '99 Eaglewood Lane');

----------------- Insert into Customer  table ------------------

insert into customer(customerID, name, phoneNum, address)
VALUES
('9001', 'Cameron Payne', '8764529239', '505 Skip Lane'),
('9002', 'Renee Good', '8762384700', '67 Church Street'),
('9003', 'Seth Rollins', '8763492843', '9521 Half-Way-Tree Road'),
('9004', 'Laura Reid', '8769302822', '1 Lexus Boulevard'),
('9005', 'Steve Ben', '8769302232', '44 Parks Boulevard'),
('9006', 'Sheldon Brown', '8764629239', '80 Bay Area'),
('9007', 'Kim John', '8762381100', '99 Hell Street'),
('9008', 'Roberta Rose', '8763494443', 'Liberty Hill'),
('9009', 'Veronica Reid', '8769306352', '234 Rose Boulevard'),
('9010', 'Steven Paul', '8769308832', '43 Portland Ave'),
('9011', 'Robin Fenty', '8764524439', '5 French Lane'),
('9012', 'Megan Snow', '8762384700', '51 Market Ave'),
('9013', 'Kerry Roberts', '8763492843', '57 Hunts Bay'),
('9014', 'Eva Paths', '8769111822', '1 Grave Boulevard'),
('9015', 'Jonas Mais', '8769002548', '590 Express Lane');


----------------- Insert into Bike table ------------------

insert into bike(serialNum, bikeID, bikeColor, fuelType, numDoors, ManuID, vendorID)
VALUES
('1070','3001','Red','90',0,null,'7010'),
('1090','3002','Blue','87',0,null,'7001'),
('1100','3003','Black','87',0,'5001',null),
('1080','3004','Black','90',0,'5003',null),
('1110','3005','White','90',0,'5013',null),
('1080','3006','Red','90',0,null,'7012'),
('1090','3007','Blue','87',0,null,'7008'),
('1120','3008','White','87',0,null,'7009'),
('1100','3009','Silver','90',0,'5001',null),
('1130','3010','Blue','87',0,'5002',null),
('1080','3011','Black','90',0,null,'7005'),
('1090','3012','Blue','87',0,'5005',null);


 ----------------- Insert into Car table ------------------
insert into car(serialNum, carID, carColor, fuelType, numDoors, ManuID, vendorID)
VALUES
('1060','4001','Blue','90',4,'5003',null),
('1000','4002','Grey','87',2,null,'7007'),
('1050','4003','White','90',4,null,'7002'),
('1040','4004','Red','87',4,'5002',null),
('1060','4005','Black','87',4,'5009',null),
('1010','4006','White','90',2,null,'7012'),
('1030','4007','Black','87',4,'5015',null),
('1010','4008','Grey','90',2,'5011',null),
('1020','4009','Black','90',4,null,'7008'),
('1050','4010','Red','90',4,null,'7011'),
('1040','4011','White','87', 4,null,'7011'),
('1030','4012','Blue','87',4,'5006',null);
    
----------------- Insert into truck  table ------------------
insert into truck(serialNum, truckID, truckColor, fuelType, numDoors, ManuID, vendorID)
VALUES
('1150','6001','Red','Diesel',2,'5001',null),
('1180','6002','Brown','Diesel',2,'5003',null),
('1200','6003','White','Diesel',2,null,'7009'),
('1140','6004','Red','Diesel',2,'5007',null),
('1160','6005','Blue','Diesel',2,null,'7007'), 
('1200','6006','White','Diesel',2,null,'7001'),
('1190','6007','Blue','Diesel',2,'5015',null),
('1160','6008','Grey','Diesel',2,'5012',null),
('1170','6009','Black','Diesel',2,null,'7003'),
('1190','6010','Blue','Diesel',2,'5001',null),
('1140','6011','Red','Diesel',2,'5004',null),
('1130','6012','White','Diesel',2,null,'7007');

----------------- Views ------------------
/** Discount given on vehicles sold**/
Create View Discount as 
Select make,model,(estimatedValue-total) as discount from vehicle
Inner Join vehicleinvoice
on Vehicle.serialNum = vehicleinvoice.serialNum;

/** Vehicle with prices above the average**/
Create View ExpensiveVehicle AS
Select make,model, estimatedValue from vehicle 
where estimatedValue > (Select avg(estimatedValue) from vehicle);

/** Vehicle and Vehicle Parts sold by Manufacturer**/
Create view ManufacturerSold as 
Select make,model,bikecolor as Identifier from vehicle 
inner join bike 
on bike.serialNum = vehicle.serialNum
where manuID is not null
union 
Select make,model,carcolor from vehicle 
inner join car
on car.serialNum = vehicle.serialNum
where manuID is not null
union 
Select make,model,truckcolor from vehicle 
inner join truck
on truck.serialNum = vehicle.serialNum
where manuID is not null
union 
Select make,vehicle.model,name from vehicle 
inner join vehicleparts
on vehicleparts.serialNum = vehicle.serialNum
where manuID is not null;

/** Vehicle and Vehicle Parts sold by Vendor**/
Create view VendorSold as 
Select make,model,bikecolor as Identifier from vehicle 
inner join bike 
on bike.serialNum = vehicle.serialNum
where vendorID is not null
union 
Select make,model,carcolor from vehicle 
inner join car
on car.serialNum = vehicle.serialNum
where vendorID is not null
union 
Select make,model,truckcolor from vehicle 
inner join truck
on truck.serialNum = vehicle.serialNum
where vendorID is not null
union 
Select make,vehicle.model,name from vehicle 
inner join vehicleparts
on vehicleparts.serialNum = vehicle.serialNum
where vendorID is not null;

----------------- Indexes ------------------
----------------- Stored Procedure ------------------
