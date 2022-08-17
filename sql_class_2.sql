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
