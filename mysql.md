## show all databases 
- show databases;

## create database
- create database your_database;

## create user
- create user 'your_user'@'host(%)' identified by 'password';

## grant privileges
- GRANT specified_privilege ON *.* TO 'username'@'your_host';

## create and grant 
- GRANT specified_privilege/ALL PRIVILEGES ON *.* TO 'username'@'host' IDENTIFIED BY 'password';

## backup mysql database to sql file
- mysqldump -h your_server -u username -p database_name > sql_file.sql

## restore mysql backup_file
- mysql -u username -p database < backup.sql
