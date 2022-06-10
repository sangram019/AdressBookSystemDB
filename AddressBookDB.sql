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