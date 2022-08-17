use ineuron_fsda

/* Creating Procedure */

DELIMITER &&
create procedure bank_data()
begin
      select * from bank_details;
end &&      

call bank_data()

DELIMITER &&
create procedure min_balance()
begin
    select * from bank_details where balance in (select min(balance) from bank_details);

end &&      

call min_balance()

/* create a procedure which take an argument */

DELIMITER &&
create procedure avg_bal_jobrole(IN jobrole varchar(30))
Begin
 select avg(balance) from bank_details where job = jobrole;
End &&   

call avg_bal_jobrole('admin.')
call avg_bal_jobrole('management')


/* create a procedure which takes multiple arguments */

Delimiter && 
create procedure edu_job(IN v1 varchar(30), IN v2 varchar(30))
Begin
	select * from bank_details where education = v1 and job = v2;
End &&    

call edu_job('primary', 'admin.')

/* create view of table */

create view bank_details_subset as select age, job, marital, education, balance from bank_details;bank_details_subset
/* execute the records of view */
select * from bank_details_subset;