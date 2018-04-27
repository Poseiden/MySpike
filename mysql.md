## show all databases 
- show databases;

## create database
- create database your_database;

## create user
- create user 'your_user'@'host(%)' identified by 'password';

## grant privileges
- grant all on database.tables(*) to 'your_user'@'host';

## backup mysql database to sql file
- mysqldump -h your_server -u username -p database_name > sql_file.sql

## restore mysql backup_file
- mysql -u username -p database < backup.sql
