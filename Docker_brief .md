##Docker

#### Commands 

- Connect to server
	- ssh root@127.0.0.1 -p 10022
	- 111111

- Access to directory
	- cd /home/daimler/env

- Start docker
	- service docker start

- Start virtual enviroment
	- docker-compose up -d

- List virtual enviroment 
	- docker ps

- Run a new command in a running container
	- docker exec (-i, -t) /bin/bash
	- [Official ref](https://docs.docker.com/engine/reference/commandline/exec/)

#### Port 

| Name           | Port    |
|:---:|:---:|
| localhost      | 10022   |
| nginx          | 10080   |
| tomcat         | 18080   |
| elasticsearch  |19200(service)/19300(management) |
| mariadb        |13306    |
| postgres       |15432    |
| redis          |16379    | 


#### Postgres

- connect to postgres using command client
	- psql -U postgres

- list database
	- \l

