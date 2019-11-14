use Training_19Sep19_Pune
go

-----------------CAR ENTITY---------------------------

create table [46008527].Car
(
Id int primary key identity(1,1),
Model varchar(50) unique,
ManufacturerId int,
TypeId int,
Engine varchar(10),
BHP int,
TransmissionId int,
Mileage int not null,
Seats int not null,
AirBagDetails varchar(5) not null,
BootSpace varchar(10) not null, 
Price decimal not null
)

------------------------MANUFACTURER----------------------

create table [46008527].Manufacturer
(
Id int primary key identity(1,1),
Name varchar(30) unique,
ContactPerson varchar(30) unique,
RegisteredOffice varchar(50) not null
)

------------------------CAR TYPE---------------------------

create table [46008527].CarType
(
Id int primary key identity(1,1),
Type varchar(20) unique,
) 

------------------------CAR TRANSMISSION TYPE-------------------

create table [46008527].CarTransmissionType
(
Id int primary key identity(1,1),
Name varchar(20) unique,
) 

