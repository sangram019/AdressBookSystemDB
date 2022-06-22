UC1 : Create Address Book Service DB


Create Database AddressBookService;
Use AddressBookService;

UC2 : Create Address Book Table


CREATE TABLE AddressBook
(
Id INT PRIMARY KEY IDENTITY (1,1),
FirstName VARCHAR(100),
LastName VARCHAR(100),
Address VARCHAR(500),
City VARCHAR(50),
State VARCHAR(50),
Zip INT,
PhoneNumber VARCHAR(10),
Email VARCHAR(100)
);

UC3 : Insert new contacts to AddressBook


INSERT INTO AddressBook VALUES ('sangram','behera','bbsr','bbsr','odisha',560037,'7077445649','sangram@gmail.com'),
('rakesh','behera','bdk','bdk','odisha',756001,'9999345743' ,'rakesh@gmail.com'),
('dinesh','behera','bdk','bdk','odisha',756137,'9876543383','dinesh@gmail.com'),
('prajna','behera','bdk','bdk','odisha',756118,'9875356787','prajna@gmail.com'),
('susant','behera','bdk','bdk','odisha',750112,'8765567754','susant@gmail.com');

SELECT * FROM AddressBook;

UC4: Ability to edit existing contact person using their name

UPDATE AddressBook SET Address='blr',PhoneNumber=9937314236 where FirstName='prajna';

UC5: Ability to delete person using person's name

DELETE FROM AddressBook WHERE FirstName='dinesh';

UC6: Ability to retrieve person belonging to city or state from the address book

SELECT * FROM AddressBook WHERE City='bdk' OR State='odisha';

UC7: Ability to understand size of AddressBook by city and state

SELECT COUNT(*) FROM AddressBook WHERE City='bdk' AND State='odisha';

UC8: Ability to retrieve entries sorted alphabetically by person's name for a given city

SELECT FirstName,City FROM AddressBook ORDER BY ID ASC;
SELECT FirstName,City FROM AddressBook ORDER BY ID DESC;

UC9: Ability to identify each address book with name and type

ALTER TABLE AddressBook ADD FullName VARCHAR(100),TYPE VARCHAR(100);
SELECT * FROM AddressBook
UPDATE AddressBook SET Type='Experienced' WHERE FirstName='susant';
UPDATE AddressBook SET Type='Fresher' WHERE FirstName='prajna';
UPDATE AddressBook SET Type='Trainee' WHERE FirstName='rakesh';
UPDATE AddressBook SET Type='Trainee' WHERE FirstName='sangram';

UPDATE AddressBook SET FullName='Sangram keshari behera' WHERE FirstName='sangram';
UPDATE AddressBook SET FullName='Susant Kumar behera' WHERE FirstName='susant';
UPDATE AddressBook SET FullName='Prajan parimita Behera' WHERE FirstName='prajna';
UPDATE AddressBook SET FullName='Rakesh kumar Behera' WHERE FirstName='rakesh';

UC10: Ability to get number of contact persons i.e. count by type

SELECT COUNT (*) FROM AddressBook WHERE Type='Fresher';
SELECT COUNT (*) FROM AddressBook WHERE Type='Trainee';

UC11: Ability to add person to both Types;

INSERT INTO AddressBook VALUES ('dinesh','behera','Ameerpet','Hydrabad','telengana',500015,'7008015327','dkbehera@gmail.com','Dinesh kumar Behera','Fresher'),
('Omm','behera','Ameerpet','Hydrabad','telengana',501089,'9087656676','ommibehera@gmail.com','Omm Prakash Behera','Experienced');

SELECT * FROM AddressBook;

UC12-Creating table using ER Diagram

Create table Address_Book(AddressBookId Int Identity(1,1) Primary Key,
						  AddressBookName varchar(100));
select *from Address_Book;



Create table PersonDetail(   PersonId Int Identity(1,1) Primary Key,
							 AddressBookId Int Foreign Key References Address_Book(AddressBookId),
							 FirstName varchar(50),
							 LastName varchar(50),
							 Address varchar(100),
							 City varchar(50),
							 State varchar(50),
							 Zip int,
							 PhoneNumber bigint,
							 Email_ID varchar(50)    );
select *from PersonDetail;



CREATE table PersonTypes(	 PersonTypeId Int Identity(1,1) Primary Key,
							 PersonType varchar(50), );
select *from PersonTypes;



CREATE table PersonsDetail_Type(PersonId Int Foreign Key References PersonDetail(PersonId),
								PersonTypeId Int Foreign Key References PersonTypes(PersonTypeId),
								EmployeeID Int Primary Key );
select *from PersonsDetail_Type;



CREATE table Employee_Department(PersonId Int Foreign Key References PersonDetail(PersonId),
								EmployeeID Int  ,
								DepartmentID int,);
select *from Employee_Department;

Inserting values into Address_Book table-----------------------

INSERT INTO Address_Book(AddressBookName) Values('Home'),('School'),('College'),('Office');
select *from Address_Book;

Insert values in PersonDetail table--------------------

Insert INTO PersonDetail VALUES(1,'Tanmay','Rout','bhubaneswar','khordha','Odisha',756137,8909876563,'Trout@gmail.com'),
								(2,'Suraj','sahoo','ameerpet','Hydrabad','Telengana',500067,9876567890,'Ssahoo@gmail.com'),
								(3,'Ritu','behera','pritpur','Amritsar','Punjab',640083,9089454322,'Rbehera@gamil.com'),
								(4,'kunal','mohanty','mysore','pune','Maharashtra',410205,6454837373,'kmohanty@gmail.com');
select *from PersonDetail;

Inserting values into persontype table------------------

INSERT INTO PersonTypes(PersonType) VALUES('Family'),('SchoolFriend'),('Friend'),('Profession');
select *from PersonTypes;

Insert values in Employee_Department table----------------------------


INSERT INTO Employee_Department VALUES(1,123,818),(2,456,19112),(3,789,4512),(4,244,161815);
select *from Employee_Department;

Insert values in PersonsDetail_Type table-------------------


INSERT INTO PersonsDetail_Type(PersonId,PersonTypeId,EmployeeID) VALUES(1,4,123),(2,3,456),(3,1,789),(4,2,244);
select *from PersonsDetail_Type;



