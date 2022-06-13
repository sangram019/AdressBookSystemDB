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

