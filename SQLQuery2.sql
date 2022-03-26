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

