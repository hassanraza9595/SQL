/* __________________________ TASKS _____________________________*/


use ineuron_fsda

/* with this data try to find out sum of balance */

 select sum(balance) from bank_details

/* Try to find out avarage of balance */
select avg(balance) from bank_details

/* try to find out who is having a min balance */
select * from bank_details order by balance limit 1
select * , min(balance) from bank_details
select * from bank_details where balance in (select min(balance) from bank_details)
select * from bank_details where balance = (select min(balance) MinBalance from bank_details)


/* try to find out who is having a max balance */
select * from bank_details order by balance desc limit 1

/* try to prepare a list of all the person who is having loan */
 select * from bank_details where loan = 'yes'
 
 /* try to find out average balance for all the people whose job role is admin*/
 select avg(balance) from bank_details where job = 'admin.'
 
 select * from bank_details where job = 'unknown' and age < 45 
 
 /* try to find out a record where education is primarty and person is jobless*/
select * from bank_details where education = 'primary' and job = 'unknown'



/* try to find of a record whose bank account is having a negative balance*/
select * from bank_details where balance < 0

/* 
try to find our a record who is not having house at all along with there balance 
*/

select balance, housing from bank_details where housing = 'no'


