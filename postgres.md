### Backup 

```pg_dump --host "hostname" --port "port" --username "username" -W "databasename"  > your_output_file_path.dmp ```

### Restore

``` psql -h hostname -U username -d databasename -f backup_file_path ```

 ### Find the activities connections
 
 ```SELECT * FROM pg_stat_activity WHERE datname = 'target_database' ```
 
 ### Terminate the active connections

``` SELECT pg_terminate_backend (pg_stat_activity.pid) FROM pg_stat_activity WHERE pg_stat_activity.datname = 'target_database' ```

- (Notice that if you use PostgreSQL version 9.1 or earlier, use the procpidcolumn instead of the pidcolumn because PostgreSQL changed procidcolumn to pidcolumn since version 9.2)

### Drop databse

```DROP DATABASE target_database ```


### Ref
[http://www.postgresqltutorial.com/postgresql-drop-database/](http://www.postgresqltutorial.com/postgresql-drop-database/)
