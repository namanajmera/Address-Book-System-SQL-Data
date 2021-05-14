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
