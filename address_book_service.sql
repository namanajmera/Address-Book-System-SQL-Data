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
