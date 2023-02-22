--UC1 Create AddressBook Database

create database AddressBook_serviceDB;
use AddressBook_serviceDB;

--UC2 Add AddressBook Table
create table AddressBook(
FirstName varchar(100),
LastName varchar(100),
Address varchar(100),
City varchar(100),
State varchar (100),
Zip bigint,
PhoneNumber bigint,
Email varchar(100)
);
select * from AddressBook;

--UC3	Insert Contact Details in Table

insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
values('Yuvaj','Rai','DGG','DGG','CG',201013,2548796124,'uv@gmail.com'),
('Amit','Kumar','Delhi','Delhi','DL',254685,9644556677,'amit@gmail.com'),
('Vikas','Kumar','Kanpur','Kanpur','UP',322001,9644556677,'vikas@gmail.com'),
('Nilesh','Singh','Lucknow','Lucknow','UP',250020,9656556677,'nilesh@gmail.com');
select * from AddressBook;

--UC4 Edit Contact by Person's Name

update AddressBook set PhoneNumber=8218501014 where FirstName= 'Yuvaj';
select * from AddressBook;

--UC5 Delete Existing Contact Using Name

delete AddressBook where FirstName='Vikas';
select * from AddressBook;

--UC6 Retrive Person belongings to City or State 

select * from AddressBook where City='Lucknow' or State='UP';

--UC7 Size of AddressBook

select COUNT(*) as StateCount, State from AddressBook group by State;
select COUNT(*) as StateCount, City from AddressBook group by City;

--UC8 Sort Entries By Alphabatically

select * from AddressBook order by FirstName;

--UC9 Identify Each AddressBook with Name and Type

alter table AddressBook add ContactType varchar(100) not null default 'Friend';
update AddressBook set ContactType='Family' where FirstName='Amit';
select * from AddressBook;

--UC10 Get Count by Count type
select COUNT(*) as Type, ContactType from AddressBook group by ContactType;

--UC11 Add Person to both Family and Friend
insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email,ContactType)
values('Krisha','murthy','DGG','DGG','CG',491445,9644556677,'krish07@gmail.com','Friend'),
('Krisha','murthy','DGG','DGG','CG',491445,9644556677,'krish07@gmail.com','Family');
select * from AddressBook;

--UC12 Creating Table Using Normalization and ER Diagram

Create table Address_Book1(
AddressBookId Int Identity(1,1) Primary Key,
AddressBookName varchar(100));

