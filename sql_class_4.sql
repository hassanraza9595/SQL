/* SQL Class 4 */

/*  create database and table */
create database sales 
use sales

CREATE TABLE sales1 (
	order_id VARCHAR(15) NOT NULL, 
	order_date VARCHAR(15) NOT NULL, 
	ship_date VARCHAR(15) NOT NULL, 
	ship_mode VARCHAR(14) NOT NULL, 
	customer_name VARCHAR(22) NOT NULL, 
	segment VARCHAR(11) NOT NULL, 
	state VARCHAR(36) NOT NULL, 
	country VARCHAR(32) NOT NULL, 
	market VARCHAR(6) NOT NULL, 
	region VARCHAR(14) NOT NULL, 
	product_id VARCHAR(16) NOT NULL, 
	category VARCHAR(15) NOT NULL, 
	sub_category VARCHAR(11) NOT NULL, 
	product_name VARCHAR(127) NOT NULL, 
	sales DECIMAL(38, 0) NOT NULL, 
	quantity DECIMAL(38, 0) NOT NULL, 
	discount DECIMAL(38, 3) NOT NULL, 
	profit DECIMAL(38, 8) NOT NULL, 
	shipping_cost DECIMAL(38, 2) NOT NULL, 
	order_priority VARCHAR(8) NOT NULL, 
	`year` DECIMAL(38, 0) NOT NULL
);

/* Bulk Insertion */

SET session sql_mode = ''

LOAD DATA INFILE 
'D:/iNeuron/SQL/sales_data_final.csv'
into table sales1
FIELDS TERMINATED BY ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows

select * from sales1;

/* convert sring into date */

select str_to_date(order_date, '%m/%d/%y') from sales1;

/* create new column order date after order_date column */

alter table sales1 
add column order_date_new date after order_date

Update sales1
Set order_date_new = str_to_date(order_date, '%m/%d/%Y');

/* create new column shipment_date_new and assign date data type */

alter table sales1
add column shipment_date_new date after ship_date

/* now assign ship_date values to shipment_date_new */

Update sales1
Set shipment_date_new = str_to_date(ship_date, '%m/%d/%Y');

select * from sales1

/* show me records of sales that happened between 2011-01-01 and 2011-03-30 */

select * from sales1 where shipment_date_new between '2011-01-01' and '2011-03-30';

select now()  /* current date and time */

select curdate() /* current date */

select curtime() /* current time */

select * from sales1 where shipment_date_new < date_sub(now(), interval 1 week)

select year(now()) /* show current year */

select dayname(now())  /* show current day */ 

select dayname('2022-06-24 15:49:05') /* show day on this date */

