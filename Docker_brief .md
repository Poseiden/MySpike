##Docker

#### Commands 


- Start docker
	- service docker start (Linux)
	- open -a Docker (Mac)

- Start virtual enviroment
	- docker-compose up -d

- List virtual enviroment 
	- docker ps

- Run a new command in a running container
	- docker exec -it [container id] /bin/bash
	- [Official ref](https://docs.docker.com/engine/reference/commandline/exec/)

- Docker build 
	- docker build -t repository_name dockerfile_name
	
- List all images
	- docker images
	
- Run a docker container 
	- docker run -P repository_name
	
- Docker file template
```
FROM repository_name[:latest]
RUN bash commands 
```
