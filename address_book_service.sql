#UC1
show databases;

create database address_book_service;

use address_book_service;

#UC2
create table address_book
(
	id int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
	f_name varchar(100) NOT NULL,
	l_name varchar(100) NOT NULL,
	address varchar(250) NOT NULL,
	city varchar(100) NOT NULL,
	state varchar(100) NOT NULL,
	zip int NOT NULL,
	phone_number varchar(12) NOT NULL,
   	email varchar(100) NOT NULL UNIQUE
);

desc address_book;


#UC3
insert into address_book (f_name,l_name,address,city,state,zip,phone_number,email) values 
('Naman','Ajmera','Ajmera bhawan near sabji mandi chaksu.','Jaipur','Rajasthan',303901,'8696696426','cool.naman.ajmera@gmail.com'),
('Aditya','Verma','401/12 Malviya nagar','Jaipur','Rajasthan',302012,'8654839281','aditya.verma@gmail.com'),
('Ankita','Gupta','90/12 Sanganer','Jaipur','Rajasthan',302029,'8750943201','ankita.gupta@gmail.com'),
('Arpit','Ajmera','Ajmera Bhawan Chaksu','Jaipur','Rajasthan',303901,'9004382719','arpit.ajmera@gmail.com'),
('Sonalika','Bhide','23/12 Andheri West','Mumbai','Maharastra',144001,'8756473819','sonalika.bhide@gmail.com'),
('Anuradha','Dhuria','231/11 Pratap Nagar','Ganganagar','Rajasthan',321001,'8756473819','anuradha.dhuria@gmail.com');


#UC4
update address_book set zip=303210 where f_name='Anuradha';
update address_book set city='Udaipur' where f_name='Aditya';

#UC5
delete from address_book where f_name='Sonalika';


#UC6
#Reterive All Data
select * from address_book;

#Reterive Data using city
select * from address_book where city='Jaipur';

#Reterive Data using state
select * from address_book where state='Rajasthan';


#UC7
#All data size
select count(*) from address_book;

#Count of person of specific city
select count(*) from address_book where city='Jaipur';

#Count of person of specific state
select count(*) from address_book where state='Rajasthan';


#UC8
#By f_name
select * from address_book order by f_name;

#By f_name with given city
select * from address_book where city='Jaipur' order by f_name;

#UC9
alter table address_book add type varchar(100) NOT NULL;

#Updating the data.
update address_book set type="Family" where f_name='Naman';
update address_book set type="Profession" where f_name='Aditya';
update address_book set type="Profession" where f_name='Ankita';
update address_book set type="Family" where f_name='Arpit';
update address_book set type="Friend" where f_name='Anuradha';

#10
select count(*),type from address_book group by type;

select * from address_book;

#UC11
insert into address_book (f_name,l_name,address,city,state,zip,phone_number,email,type) values 
('Bill','Calton','40/11 Seattle','Seattle','Washington',98101,'6574639271','bill.calton@gmail.com','Friend'),
('Bill','Calton','40/11 Seattle','Seattle','Washington',98101,'6574639271','bill.calton@gmail.com','Family');
#we can not insert two contact information because email id should be unique values

#UC12
#Creating some different table so that Normalization can be achived.
#Creating contact_table with single value table.

#1st table name contact_table
create table contact_table select id,f_name,l_name,phone_number,email from address_book;

#2nd table name:- address_table
create table address_table select id,address,city,state,zip from address_book;

#3rd table name:- contact_type
create table contact_type select id,f_name,l_name,type from address_book;

show tables;