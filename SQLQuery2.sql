--UC1-Create Database
create database AddressBookSystem;
use AddressBookSystem;

--UC2-Creating table
create table AddressBook
(
 ID int identity(1,1) primary key,
 firstname varchar(100) not null,
 lastname varchar(100) not null,
 address varchar(250) not null,
 city varchar(100) not null,
 state varchar(100) not null,
 zip varchar(6) not null,
 phonenumber varchar(12) not null,
 email varchar(100) not null
);
select * from AddressBook;

--UC3-Inserting Contacts
insert into AddressBook values
('Shashi','M','2nd cros Rajaji Nagar','Banglore','Karnataka','58082','8123351458','Shashi@gmail.com'),
('Ravi','M','3rd cros Jaya Nagar','Ahmadabad','Gujarat','587682','934747358','Ravi@gmail.com'),
('Akshata','F','4th cros Indira Nagar','Pune','MH','80534','1234567896','Akshi@gmail.com'),
('Porvi','F','2nd cros Rajaji Nagar','Hyderabad','Andra','80453','0987654321','Porvi@gmail.com'),
('Raja','hsjs','2nd cros Rajaji Nagar','Tirupathi','Andra','80453','0987654321','Raja@gmail.com');

--UC4-Edit Existing Contact
update AddressBook set city='Kolar' where firstname='Shashi'

select * from AddressBook

--UC5-Delete Person details

delete from AddressBook where firstname='Akshata'
select * from AddressBook

--UC6-Retrieve Person Belonging City or State
select firstname from AddressBook where city = 'Banglore' OR state = 'Karnataka'

--UC7-Count Person belonging to state and city
select COUNT(firstname) from AddressBook where city = 'Banglore' or state = 'Karnataka'

--UC8-Sort Names For Given City or State
select * from AddressBook where city = 'Banglore' order by firstname

--UC9-Address Book Names and Type
alter table AddressBook add Addressbookname varchar(20), type varchar(10)
update AddressBook set Addressbookname='book1', type='Friends' where city='Bangalore'
update AddressBook set Addressbookname='book2', type='Family' where city='Ahmadabad'
update AddressBook set Addressbookname='book4', type='Profession' where city='Tirupathi'

--UC10-Get Contacts and Count Type
select count(type) as 'family' from AddressBook where type='family'
select count(type) as 'friends' from AddressBook where type='friends'
select count(type) as 'profession' from AddressBook where type='profession'

--UC11 Add Persons to Family and Freinds
select * from AddressBook
insert into AddressBook values
('Karthik','Gowda','House no 212','Mysore','Karnataka',785575,'8748892361','Karthik@gmail.com','book2','Friends');

