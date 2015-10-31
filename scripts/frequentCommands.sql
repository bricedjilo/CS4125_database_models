SELECT table_name from user_tables;
select 'drop table '|| table_name ||' cascade constraints;' from user_tables;