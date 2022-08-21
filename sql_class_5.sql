1048576

set global max_allowed_packet = 209715200

// create a custom function */

use sales

Delimiter $$
create function add_to_col1(a int)
returns int
deterministic
begin
declare b int;
set b = a + 10;
return b;
end $$
