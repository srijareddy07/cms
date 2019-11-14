use Training_19Sep19_Pune
go

create procedure [46008527].AddCar
@Model varchar(50),
@ManufacturerId int,
@TypeId int,
@Engine varchar(10),
@BHP int,
@TransmissionId int,
@Mileage int,
@Seats int,
@AirBagDetails varchar(5),
@BootSpace varchar(10),
@Price decimal
as 
begin
insert into [46008527].Car Values(@Model,@ManufacturerId,@TypeId,@Engine,@BHP,@TransmissionId,@Mileage,@Seats,@AirBagDetails,@BootSpace,@Price)
end
go

create procedure [46008527].SearchCarByModel
@model varchar(50)
as
begin
select * from [46008527].Car C
 inner join [46008527].Manufacturer M on C.ManufacturerId=M.Id 
 inner join [46008527].CarType Ct on C.TypeId=Ct.id
  inner join [46008527].CarTransmissionType CT on C.TransmissionId=CT.Id  
  where c.model=@Model
  end
go

create procedure [46008527].SearchCarByName
@name varchar(50)
as
begin
select * from [46008527].Car C
 inner join [46008527].Manufacturer M on C.ManufacturerId=M.Id 
 inner join [46008527].CarType Ct on C.TypeId=Ct.id
  inner join [46008527].CarTransmissionType CT on C.TransmissionId=CT.Id  
  where M.Name=@name
  end
go

create procedure [46008527].DeleteCar
@model varchar(20)
as
delete from [46008527].Car where Model=@model
go



create procedure [46008527].ListCars
@name varchar(50),
@type varchar(10)
as
begin
select ManufacturerId,Model,TypeId,TransmissionId,Price from [46008527].Car C
 inner join [46008527].Manufacturer M on C.ManufacturerId=M.Id 
 inner join [46008527].CarType Ct on C.TypeId=Ct.id
  inner join [46008527].CarTransmissionType CT on C.TransmissionId=CT.Id  
  where M.Name=@name and Ct.Type=@type
  end
go