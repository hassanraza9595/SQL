use ineuron_fsda

/* Creating Procedure */

DELIMITER &&
create procedure bank_data()
begin
      select * from bank_details;
end &&      

call bank_data()
