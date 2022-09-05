1048576

set global max_allowed_packet = 209715200

// create a custom function */

use sales

Delimiter $$
create function add_to_col1(a int)
returns int
deterministic  /* always return same result for any kind of input parameter */
begin
declare b int;
set b = a + 10;
return b;
end $$

select add_to_col1(20)


select quantity, add_to_col1(quantity) as quantity_plus_10 from sales1;


/* create another function */

Delimiter $$
create function final_profits(profit int, discount int)
returns int
Deterministic
begin 
	declare new_profit int ;
	set new_profit = profit - discount ;
	return new_profit ;
end $$

select profit, discount, final_profits(profit, discount) from sales1;

/* create another user defined function with three parameter */

Delimiter $$
create function final_profit_3(profit decimal(20,3), discount decimal(20,3), sales decimal(20,3))
returns int
Deterministic
begin 
	declare new_profit int ;
	set new_profit = profit - sales * discount ;
	return new_profit ;
end $$


select profit, discount, sales , final_profit_3(profit, discount, sales) from sales1;

/* create a function which convert integer into string */

Delimiter $$
create function int_to_str(a int)
returns varchar(30)
deterministic
begin
declare b varchar(30);
set b = a;
return b;
end $$

