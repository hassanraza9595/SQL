/* create new database */
create database if not exists dress_data;
use dress_data /* it means through out the session we will be using dress_data */

create table if not exists dress(
`Dress_ID`   	varchar(30),
`Style`         varchar(30),
`Price`         varchar(30),
`Rating`        varchar(30),
`Size`	        varchar(30),
`Season`        varchar(30),
`NeckLine`      varchar(30),
`SleeveLength`  varchar(30),
`waiseline`	    varchar(30),
`Material`	 	varchar(30),
`FabricType`	varchar(30),
`Decoration`	varchar(30),
`Pattern Type`	varchar(30),
`Recommendation` varchar(30))

select * from dress;

/* Bulk Insertion into a table */

LOAD DATA INFILE
'D:/iNeuron/SQL/AttributeDataSet.csv'
into table dress
FIELDS TERMINATED by ','
ENCLOSED by '"'
LINES TERMINATED by '\n'
IGNORE 1 ROWS;

/* show variables like 'secure_file_priv'; */

select count(*) from dress;

create table test ( 
test_id int auto_increment,
test_name varchar(30),
test_mailid varchar(30),
test_address varchar(30),
primary key (test_id)) 

insert into test values(1, 'hassan', 'hassan@gmail.com', 'karachi'),
                       (2, 'juniad', 'junaid@yahoo.com', 'hyderabad'),
                       (3, 'asif', 'asif@gmail.com', 'jamshoro'),
                       (4, 'hanif', 'hanif@ineuron.ai', 'balida')
                       
select * from test;                       

insert into test values (5, 'sher', 'sher@gmail.com', 'gulistan-e-johar')


create table test2 ( 
test_id int not null auto_increment,
test_name varchar(30),
test_mailid varchar(30),
test_address varchar(30),
primary key (test_id)) 

insert into test2 (test_name, test_mailid, test_address) values
                       ('hassan', 'hassan@gmail.com', 'karachi'),
                       ('juniad', 'junaid@yahoo.com', 'hyderabad'),
                       ('asif', 'asif@gmail.com', 'jamshoro'),
                       ('hanif', 'hanif@ineuron.ai', 'balida')
                       
select * from test2;

/* create a table and add check constraint */

create table test3 ( 
test_id int,
test_name varchar(30),
test_mailid varchar(30),
test_address varchar(30),
test_salary int check(test_salary > 10000)) 

alter table test3 add check (test_id > 0)
insert into test3 values(100, 'hassan', 'hassan@gmail.com', 'karachi', 18000)

insert into test3 values(1, 'hassan', 'hassan@gmail.com', 'karachi', 18000),
                       (2, 'juniad', 'junaid@yahoo.com', 'hyderabad', 50000),
                       (3, 'asif', 'asif@gmail.com', 'jamshoro', 16000),
                       (4, 'hanif', 'hanif@ineuron.ai', 'balida', 15000)
                       
select * from test3;

/* default constraint */

create table if not exists test5 ( 
test_id int NOT NULL default 0 ,
test_name varchar(30),
test_mailid varchar(30),
test_address varchar(30),
test_salary int check(test_salary > 10000)) 
                       
insert into test5 (test_name, test_mailid, test_address, test_salary) values('hassan', 'hassan@gmail.com', 'karachi', 18000)
 
 select * from test5;