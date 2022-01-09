-- US 1 Ability to create a Address Book Service DB
create database address_book_service;

use address_book_service;

-- UC 2 - Ability to create a Address Book Table with first and last names, address, city, state, 
-- zip, phone number and email as its attributes

create table address_book (
id int not null primary key auto_increment,
first_name varchar(20),
last_name varchar(20),
address varchar(50),
city varchar(20),
state varchar(20),
zip int,
phone_number int,
email varchar(20)
);

-- UC 3 - Ability to insert new Contacts to Address Book

insert into address_book (first_name,last_name,address,city,state,zip,phone_number,email)
values ( 'Rahul','Varma',' A-15 Steet','Mumbai','Maharashtra',111222,1234455,'rahulvarma@gmail.com');

insert into address_book (first_name,last_name,address,city,state,zip,phone_number,email)
values ( 'Amar','Jadhav',' K road','Pune','Maharashtra',111222,1234455,'ajadhav@gmail.com');

insert into address_book (first_name,last_name,address,city,state,zip,phone_number,email)
values ( 'Apurva','S',' D road','Pune','Maharashtra',111222,1234455,'apurvajs@gmail.com');

insert into address_book (first_name,last_name,address,city,state,zip,phone_number,email)
values ( 'Raju','M',' Y road','bangalore ','Karnataka',111222,1234455,'rajum@gmail.com');

insert into address_book (first_name,last_name,address,city,state,zip,phone_number,email)
values ( 'Mayur','P',' N road','Nagpur ','maharashtra',111222,1234455,'mayur@gmail.com');
address_book
set sql_safe_updates=1;
update address_book set phone_number=99887766 where first_name='Mayur';

select * from address_book;