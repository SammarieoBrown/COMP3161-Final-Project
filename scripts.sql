
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
    estimatedValue int,
    make varchar(55),
    Primary Key(serialNum)

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

Create table Vendor(
    vendorID varchar(10) not null,
    name varchar(55),
    phoneNum varchar(10),
    address varchar(255),
    Primary Key(vendorID)
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
    total float);




# ----------------- Insert into manufacturer  table ------------------

insert into manufacturer(manuid, name, phonenum, address)

VALUES
('5001', 'John Carl', '8762537291', '10 Christian Park'),
('5002', 'Micheal Jackson', '8769573859', '150 Laurel Street'),
('5003', 'Stu Clark', '8763729471', '88 New Kingston'),
('5004', 'Carl Beckford', '8766483267', '108 Ardenne Road'),
('5005', 'Paul Johnson', '876643234', '03 Papine South'),

('5006', 'Jermaine Nick', '8762447291', '102 Napal Park'),
('5007', 'Micheal Jordan', '8769573859', '50 North Kings'),
('5008', 'Sue Clark', '8763729443', '88 South Camp Rd'),
('5009', 'Lewis Lane', '8766453267', '108 Downtown '),
('5010', 'Paul Johnson', '876643234', '03 Papine South'),

('5011', 'John Paul', '8762537291', '10 Rosa Park'),
('5012', 'Micheal Jackson', '8769573859', '150 Garvy Street'),
('5013', 'Sophia Brown', '8763729471', '88 Old Kingston'),
('5014', 'Carl Brown', '8766483267', '108 Camp Road'),
('5015', 'Paul Brown', '876643234', '03 Downtown '),

('5016', 'Chad Reid', '8762537291', '10 Papine Park'),
('5017', 'Micheal Smith', '8769573859', '150 Lexus Street'),
('5018', 'Ben Clark', '8763729471', '88 Old Kingston'),
('5019', 'Carl Minto', '8766483267', '108 Ardenne Road'),
('5020', 'Paula Johnson', '876643234', '03 Papine South');



# ----------------- Insert into vehicle  table ------------------

insert into vehicle(serialNum, model, year, estimatedValue, make)
VALUES
('1000', 'A5', '2022', '1200000', 'Audi'),
('1010', 'Civic', '2020', '3500000', 'Honda'),
('1020', 'Vitz', '2009', '9000000', 'Toyota'),
('1030', 'Tacoma', '2001', '850000', 'Toyota'),
('1040', 'Tacoma', '2001', '850000', 'Toyota'),

('1050', 'A5', '2022', '1200000', 'Audi'),
('1060', 'Civic', '2020', '3500000', 'Honda'),
('1070', 'Vitz', '2009', '9000000', 'Toyota'),
('1080', 'Tacoma', '2001', '850000', 'Toyota'),
('1090', 'Tacoma', '2001', '850000', 'Toyota'),

('1100', 'A5', '2022', '1200000', 'Audi'),
('1110', 'Civic', '2020', '3500000', 'Honda'),
('1120', 'Vitz', '2009', '9000000', 'Toyota'),
('1130', 'Tacoma', '2001', '850000', 'Toyota'),
('1140', 'Tacoma', '2001', '850000', 'Toyota'),

('1150', 'A5', '2022', '1200000', 'Audi'),
('1160', 'Civic', '2020', '3500000', 'Honda'),
('1170', 'Vitz', '2009', '9000000', 'Toyota'),
('1180', 'Tacoma', '2001', '850000', 'Toyota'),
('1190', 'Tacoma', '2001', '850000', 'Toyota');



# ----------------- Insert into vehicle  table ------------------

insert into Vendor(vendorID, name, phoneNum, address)
VALUES

('5944', 'Carla March', '8763549254', '99 Highway Road'),
('1133', 'Morgan Freeman', '8769655722', '599 Mango Path'),
('2331', 'Eddie Campbell', '8769753334', '31 Portmore Pines'),
('4372', 'John Cena', '8768574094', '456 JamRock Center'),
('2390', 'Robert Cena', '8768574094', '456 JamRock Center'),
('1944', 'Kimone March', '8763549254', '99 Uptown Park'),
('2945', 'Shelly Freeman', '8769655722', '599 Mango Path'),
('3957', 'Paul Campbell', '8769753334', '31 Portmore Pines'),
('4709', 'Serena Cena', '8768574094', '456 JamRock Center'),
('5709', 'John Cena', '8768574094', '456 Kingston Center'),
('6728', 'Carla March', '8763549254', '99 Highway Road'),
('7300', 'Morgan Freeman', '8769655722', '599 Mango Path'),
('8464', 'Eddie Campbell', '8769753334', '31 Portmore Pines'),
('9023', 'John Cena', '8768574094', '456 JamRock Center'),
('2499', 'John Brown', '8768574094', '456 JamRock Center'),
('1943', 'Carla March', '8763549254', '99 Highway Road'),
('3200', 'Ray Freeman', '8769655722', '599 Mango Path'),
('2367', 'Kim Campbell', '8769753334', '31 Portmore Pines'),
('0002', 'Sally Row', '8768574094', '456 JamRock Center'),
('1456', 'John Martin', '8768574094', '456 JamRock Center');


# ----------------- Insert into vehicle  table ------------------
insert into vehicleparts(serialNum, partID, model, year, name, ManuID, vendorID)
VALUES


('1000', '882OLW', '2017OLW', '2017', 'Outlaw Front Bumper', '5002','5944'),
('1010', 'SENSEKR26', 'SKR2019', '2019', 'Kumho Tires', '5003',null),
('1020', '883AVP',  '2019AVP', '2019', 'GP Slip-On Exhaust', '5004',null),
('1030', '540ULO',  'ULO2020',  '2020', 'Side View Mirror', '5001','1133'),
('1040', '570JJL',  'ULO2020',  '2020', 'Side View Mirror', '5005',null),

('1050', '821ONW', '2017OLW', '2017', 'Outlaw Back Bumper', '5006','2331'),
('1060', 'SEER26', 'SKR2019', '2019', 'Kumho Tires', '5007','2331'),
('1070', '911KVP',  '2019AVP', '2019', 'GP Slip-On Exhaust', '5008','2390'),
('1080', '540UJO',  'ULJO2020',  '2020', 'Side View Mirror', '5009','2390'),
('1090', '533UPO',  'UPO2020',  '2020', 'Side View Mirror', '5010','2390'),

('1100', '899OLW', '2017OLW', '2017', 'Outlaw Front Bumper', '5012',null),
('1110', 'SENS23', 'SKR2019', '2019', 'Kumho Tires', '5013','1944'),
('1120', '906AVP',  '2019AVP', '2019', 'GP Slip-On Exhaust', '5014',null),
('1130', '000WWL',  'ULO2020',  '2020', 'Side View Mirror', '5015','6728'),
('1140', '895KKL',  'ULO2020',  '2020', 'Side View Mirror', '5016','6728'),

('1150', '332OLW', '2017OLW', '2017', 'Outlaw Front Bumper', '5017','9023'),
('1160', 'SEEKR16', 'SKR2019', '2019', 'Kumho Tires', '5018',null),
('1170', '942AVP',  '2019AVP', '2019', 'GP Slip-On Exhaust', '5019','2499'),
('1180', '223ULO',  'ULO2020',  '2020', 'Side View Mirror', '5020',null),
('1190', '942AVF',  '2019AVP', '2019', 'GP Slip-On Exhaust', '5001','1943');


# ----------------- Insert into vehicle  table ------------------
insert VehicleInvoice(invoiceNum, serialNum, date, total)
VALUES
('0001', '1000', '2021/12/01', 6400000.20),
('0002', '1010', '2022/01/15', 9000000.32),
('0003', '1020', '2021/06/22', 6350000.36),
('0004', '1030', '2021/11/01', 5300000.67),
('0005', '1040', '2021/11/01', 760000.11),
('0006', '1050', '2021/12/01', 1000000.76),
('0007', '1060', '2022/01/15', 150000.65),
('0008', '1070', '2021/06/22', 8500000.77),
('0009', '1080', '2021/11/01', 970000.22),
('0010', '1090', '2021/11/01', 2490000.23),
('0011', '1100', '2021/12/01', 3000000.00),
('0012', '1110', '2022/01/15', 4500000.00),
('0013', '1120', '2021/06/22', 6200000.00),
('0014', '1130', '2021/11/01', 3330000.00),
('0015', '1140', '2021/11/01', 1070000.00),
('0016', '1150', '2021/12/01', 6800000.00),
('0017', '1160', '2022/01/15', 5006000.00),
('0018', '1170', '2021/06/22', 3400600.00),
('0019', '1180', '2021/11/01', 1200000.00),
('0020', '1190', '2021/11/01', 2000000.00);


insert into mechanic(mechanicID, name, phoneNum, address)
VALUES
('9984', 'Paul Smith', '8765483443', '45 Seesaw Road'),
('9985', 'Nick Carter', '8769467483', '2 Fly High Street'),
('9986', 'Vince Parks', '8769456382', '901 Evergreen Lane'),
('9987', 'Erica Banks', '8768494755', '123 Sycamore Circle'),
('9981', 'Mary Brown', '8768494341', '123 Seesaw Circle'),
('1984', 'Paul Smith', '8765483443', '45 Seesaw Road'),
('2985', 'Nick Carter', '8769467483', '2 Fly High Street'),
('3986', 'Vince Parks', '8769456382', '901 Evergreen Lane'),
('4987', 'Erica Banks', '8768494755', '123 Sycamore Circle'),
('5987', 'Mary Brown', '8768494341', '123 Seesaw Circle'),
('6984', 'Paul Smith', '8765483443', '45 Seesaw Road'),
('7985', 'Nick Carter', '8769467483', '2 Fly High Street'),
('8986', 'Vince Parks', '8769456382', '901 Evergreen Lane'),
('9927', 'Erica Banks', '8768494755', '123 Sycamore Circle'),
('7987', 'Mary Brown', '8768494341', '123 Seesaw Circle'),
('1982', 'Paul Smith', '8765483443', '45 Seesaw Road'),
('9923', 'Nick Carter', '8769467483', '2 Fly High Street'),
('9934', 'Vince Parks', '8769456382', '901 Evergreen Lane'),
('9935', 'Erica Banks', '8768494755', '123 Sycamore Circle'),
('9983', 'Mary Brown', '8768494341', '123 Seesaw Circle');



# ----------------- Insert into Customer  table ------------------

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
('9011', 'Ranlod Seth', '8764524439', '5 French Lane'),
('9012', 'Pam Good', '8762384700', '51 Market Ave'),
('9013', 'Collin Rollins', '8763492843', '57 Hunts Bay'),
('9014', 'Laura Bell', '8769111822', '1 Grave Boulevard'),
('9015', 'Steve Smith', '8769532232', '44 Parks Boulevard'),
('9016', 'Jason Payne', '8764529239', '505 Skip Lane'),
('9017', 'Tianna Smith', '8762384711', '67 Papine Street'),
('9018', 'Chad Rollins', '8763492843', '9521 Half-Way-Tree Road'),
('9019', 'Jenelle Reid', '8769302822', '1 Lexus Boulevard'),
('9020', 'Ethan Ben', '8769302232', '44 Parks Boulevard');



#----------------- Insert into Bike table ------------------

insert into bike(serialNum, bikeID, bikeColor, fuelType, numDoors, ManuID, vendorID)
VALUES
('1000', 'MXU400', 'Grey', '90', 0,'5001',Null),
('1010', 'RAP710', 'Red', '90', 0,Null,'5944'),
('1020', 'KLX120', 'Black', '90', 0,'5004',Null),
('1030', 'RMZ230', 'Blue', '90', 0,Null,'5944'),
('1040', 'RMZ240', 'Pink', '90', 0,Null,'5944'),
('1050', 'ABC100', 'Grey', '90', '0',Null,'5944'),
('1060', 'ABC200', 'Red', '90', '0',Null,'5944'),
('1070', 'ABC300', 'Black', '90', '0',Null,'5944'),
('1080', 'ABC400', 'Blue', '90', '0',Null,'5944'),
('1090', 'ABC500', 'Blue', '90', '0',Null,'5944'),
('1100', 'ABC600', 'Grey', '90', '0','5004',Null),
('1110', 'ABC700', 'Red', '90', '0','5004',Null),
('1120', 'ABC800', 'Black', '90', '0','5004',Null),
('1130', 'ABC900', 'Purple', '90', '0','5004',Null),
('1140', 'ABC901', 'Orange', '90', '0','5004',Null),
('1150', 'DEF100', 'Grey', '90', '0','5004',Null),
('1160', 'DEF200', 'Red', '90', '0','5004',Null),
('1170', 'DEF300', 'Black', '90', '0','5004',Null),
('1180', 'DEF400', 'Yellow', '90', '0','5004',Null),
('1190', 'DEF500', 'White', '90', '0','5004',Null);


# ----------------- Insert into Car table ------------------

insert into car(serialNum, carID, carColor, fuelType, numDoors, ManuID, vendorID)
VALUES
('1000', '1000FE', 'Blue', '87', '4','5004',Null),
('1010', '8110ZA', 'Red', '90', '2','5009',Null),
('1020', '1420JF', 'Black', '90', '2','5004',Null),
('1030', '9530KI', 'White', '90', '4','5004',Null),
('1040', '9530LM', 'Yellow', '87', '4','5004',Null),
('1050', '1001LA', 'Blue', '87', '4',Null,'5944'),
('1060', '8100PS', 'Red', '90', '2',Null,'5944'),
('1070', '1430WW', 'Black', '90', '2',Null,'5944'),
('1080', '5330QL', 'White', '90', '4',Null,'5944'),
('1090', '110LT', 'Yellow', '87', '4',Null,'5944'),
('1100', '1022PE', 'Blue', '87', '4','5004',Null),
('1110', '3545GD', 'Red', '90', '2','5004',Null),
('1120', '1550II', 'Black', '90', '2','5004',Null),
('1130', '5433BD', 'White', '90', '4','5017',Null),
('1140', '7684LO', 'Yellow', '87', '4','5017',Null),
('1150', '1033FF', 'Blue', '87', '4',Null,'5944'),
('1160', '8110MM', 'Red', '90', '2',Null,'2331'),
('1170', '1420NN', 'Black', '90', '2',Null,'2331'),
('1180', '9530YY', 'White', '90', '4',Null,'2331'),
('1190', '9530QQ', 'Yellow', '87', '4',Null,'5944');

# ----------------- Insert into truck  table ------------------
insert into truck(serialNum, truckID, truckColor, fuelType, numDoors, ManuID, vendorID)
VALUES
('1000', '7001FRD', 'Navy', '90', '2',Null,'5944'),
('1010', '1010RAP', 'Burgandy', '90', '2',Null,'5944'),
('1020', '4620GMC', 'White','94', '2',Null,'5944'),
('1030', '1530RAM', 'Black', '94', '2',Null,'5944'),
('1040', '1530RAL', 'Black', '94', '2',Null,'5944'),
('1050', '111FRD', 'Navy', '90', '2','5004',Null),
('1060', '1010REP', 'Burgandy', '90', '2','5004',Null),
('1070', '5620GMC', 'White','94', '2','5019',Null),
('1080', '1000RAM', 'Black', '94', '2','5019',Null),
('1090', '1430RAM', 'Black', '94', '2','5019',Null),
('1100', '7004FRD', 'Navy', '90', '2','5004',Null),
('1120', '1015RAP', 'Burgandy', '90', '2','5017',Null),
('1130', '4621GMC', 'White','94', '2','5017',Null),
('1140', '1535RAM', 'Black', '94', '2','5004',Null),
('1150', '1533RAM', 'Black', '94', '2','5017',Null),
('1160', '7009FRD', 'Navy', '90', '2',Null,'5944'),
('1170', '1011RAP', 'Burgandy', '90', '2',Null,'5944'),
('1180', '4630GMC', 'White','94', '2',Null,'0002'),
('1190', '1540RAM', 'Black', '94', '2',Null,'0002'),
('1110', '1550RAM', 'Black', '94', '2',Null,'0002');


# views for cars vehicles own by vendor


# syntax : create view <name of view> as select


