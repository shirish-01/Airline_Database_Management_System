create database airline;
use airline;
show tables;

#Customer Table
create table Customer
(
CustId int not null,
CustType varchar(20),
primary key (CustId)
);


# login table
create table Login
(
UserId int not null,
Password varchar(100),
primary key (UserId),
CustId int not null,
foreign key (CustId) references Customer(CustId)  on update cascade on delete cascade
);

# Agent Table
create table Agent
( 
AgentNo int not null ,
Markup int,
CompanyName varchar(100),
RegistrationNo varchar(100),
primary key (AgentNo),
CustId int not null,
foreign key (CustId) references Customer(CustId) on update cascade on delete cascade
);

# Passenger Table
create table Passenger
(
PNR varchar(5) not null,
TripCount int,
primary key (PNR),
CustId int not null,
foreign key (CustId) references Customer(CustId) on update cascade on delete cascade
);

# Ticket Table
create table Ticket
(
TicketNo varchar(10),
Type varchar(20),
DateOfBooking date,
primary key (TicketNo),
CustId int not null,
foreign key (CustId) references Customer(CustId) on update cascade on delete cascade
);

# Booking table (Aggregation)
create table Booking
(
CustId int not null,
TicketNo varchar(20) not null,
constraint CustomerTicket primary key ( CustId, TicketNo),
foreign key (CustId) references Customer(CustId) on update cascade on delete cascade,
foreign key (TicketNo) references Ticket(TicketNo) on update cascade on delete cascade
);

show tables;

# Airport Table
create table Airport
(
Code varchar(4) not null,
Name varchar(30) not null,
City varchar(30) not null,
Country varchar(50),
primary key (Code)
);

# Aeroplane Table
create table Aeroplane
(
AirplaneId varchar(10) not null,
AircraftType varchar(20),
Fare int,
primary key(AirplaneId),
ArrivalCode varchar(4) not null,
DeptCode varchar(4) not null, 
foreign key (ArrivalCode) references Airport(Code) on update cascade on delete cascade,
foreign key (DeptCode) references Airport(Code) on update cascade on delete cascade
);

# route Tableaeroplane
create table Route
(
RouteId varchar(5) not null,
distance int default(0),
origin varchar(30),
destination varchar(30),
AirplaneId varchar(10) not null,
foreign key (AirplaneId) references Airport(Code) on update cascade on delete cascade
);

# Seat Table
create table Seat
(
SeatNo varchar(3) not null,
class varchar(10),
CustId int not null,
TicketNo varchar(10) not null,
AirplaneId varchar(10) not null,
foreign key (CustId) references Customer(CustId) on update cascade on delete cascade,
foreign key (TicketNo) references Ticket(TicketNo) on update cascade on delete cascade,
foreign key (AirplaneId) references Aeroplane(AirplaneId) on update cascade on delete cascade
);

show tables;
use airline;
#drop table aeroplane,agent,airport,booking,customer,login,passenger,route,seat,ticket;
select * from booking;
