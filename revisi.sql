Create login budi_andi with password = '1111';

create login asep_andi with password = '2222';

create login dina_andi with password = '3333';

create user budi_andi for login budi_andi;
create user asep_andi for login asep_andi;
create user dina_andi for login dina_andi;

grant create table to budi_andi;
grant create table to dina_andi;

grant alter on schema ::dbo to budi_andi

GRANT SELECT,INSERT,UPDATE, DELETE TO budi_andi;

GRANT SELECT,INSERT,UPDATE, DELETE TO dina_andi;
