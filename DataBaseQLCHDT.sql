create database 4Gear_Store;
use 4Gear_Store;
create table roles(
	role_id int primary key auto_increment,
    role_name varchar(50)
);
create table user(
	user_id int primary key auto_increment,
	user_name varchar(250) unique,
    user_password varchar(250)
);
create table suppliers(
	supplier_id int primary key auto_increment,
    supplier_name varchar(250),
    supplier_email varchar(250),
    supplier_phone varchar(50),
    supplier_address varchar(250)
);
create table Categories(
	category_id int primary key auto_increment,
    category_name varchar(250),
    category_description varchar(250)
);
create table Products(
	product_id int primary key auto_increment,
    product_name varchar(250),
    product_desciption varchar(250),
    product_price int,
    product_stock int,
    category_id int,
    supplier_id int,
    foreign key (category_id) references Categories(category_id),
    foreign key (supplier_id) references suppliers(supplier_id)
);
create table Employees(
	employee_id int primary key auto_increment,
    employee_name varchar(250),
    employee_email varchar(250),
    employee_phone varchar(250),
    employee_address varchar(250)
);
create table Customers(
	customer_id int primary key auto_increment,
    customer_name varchar(250),
    customer_email varchar(250),
    ecustomer_phone varchar(250),
    customer_address varchar(250)
);