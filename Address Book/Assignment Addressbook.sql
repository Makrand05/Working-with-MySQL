*
-- UC 1 
create database address_book_service;
use address_book_service;

-- UC2 Ability to create a Address Book Table with first and last names, address, city, state, zip, phone number and email as its attributes
desc address_book;
create table address_book(
id int not null primary key auto_increment,
first_name varchar(20),
last_name varchar(20),
address varchar(100),
city varchar(20),
state varchar(20),
zip int,
phone_number int,
email varchar(20)
);

-- UC 3
insert into address_book(first_name,last_name,address,city,state,zip,phone_number,email) 
values('Rahul','Varma'," A-15 Steet",'Mumbai','Maharashtra',111222,1234455,'rahulvarma@gmail.com');

-- UC 4 -
update address_book set zip=100010 where first_name='Mayur';

-- UC 5 
delete from address_book where id = 5;

insert into address_book(first_name,last_name,address,city,state,zip,phone_number,email) 
values('Mayur', 'P', ' N road', 'Nagpur ', 'maharashtra', '100010', '1234455', 'mayur@gmail.com');

-- UC 6 

select * from address_book where state='Maharashtra';

-- UC 7
SELECT city, COUNT(city) FROM address_book group by city;
-- UC 8
select * from address_book order by first_name;

-- UC 9 

alter table address_book add address_book_name varchar(20), add address_book_type varchar(20);

update address_book set address_book_name='Book3' where id =3;

update address_book set address_book_type='Profession' where id=6;

select * from address_book where address_book_name='Book2' order by address_book_type;


-- US 9 Ability to get number of contact persons i.e. count by type

select address_book_type, count(address_book_type) from address_book group by address_book_type;

-- UC 10 Ability to add person to both Friend and Family


select * from address_book;
-- UC 1 ER diagram
create table person(
id int not null primary key auto_increment,
first_name varchar(20) not null,
last_name varchar(20) not null
);

create table person_address(
id int not null primary key auto_increment,
address varchar(50),
city varchar(20),
state varchar(20),
zip int,
person_id int,
foreign key(person_id) references person(id)
);

create table person_contact(
id int not null primary key auto_increment,
phone_number int,
email varchar(20),
person_id int,
foreign key(person_id) references person(id)
);

create table addressbook(
id int not null primary key auto_increment,
book_name varchar(20),
book_type varchar(20)
);

create table person_addressbook(
person_id int not null,
addressbook_id int not null,

);
