### Build database

``` sql
CREATE DATABASE database;
EXEC sp_configure 'contained database authentication', 1 
GO

RECONFIGURE 
GO

ALTER DATABASE database SET containment = partial GO
USE database
GO

CREATE USER username WITH PASSWORD = 'password';

GRANT CREATE TABLE TO username;
exec sp_addrolemember 'db_owner', 'username'
GO
```
