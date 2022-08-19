# Definition
* Docker = Docker is an open platform for developing, shipping and running applications. Docker enables you to separate your applications from your infrastructure so you can deliver software quickly. With Docker, you can manage your infrastructure in the same ways you manage your applications. By taking advantage of Docker’s methodologies for shipping, testing, and deploying code quickly, you can significantly reduce the delay between writing code and running it in production
* Kubernetes = Kubernetes is a portable, extensible, open-source platform for managing containerized workloads and services, that facilitates both declarative configuration and automation. It has a large, rapidly growing ecosystem. Kubernetes services, support, and tools are widely available


# Docker : To Read
* Docker image contains everything a micro service needs to run. ( for ex : 1) Application runtime ( JDK, Python, NodeJS ) 2) Application code 3) dependencies ) 
* We can install / run docker container on 1) on-premise (local machine) 2) corporate data center 3) cloud
* [Docker Hub](https://hub.docker.com/) is the world's easiest way to create, manage and deliver your container applications. It contains number of repositories.
* We will deploy Docker container inside Kubernetes Cluster 
* OpenShift is Container Platform ( PAAS --- Platform As A Service )  
* OpenShift is Kubernetes Platform 
* Katacoda editor 
* Pod = Memory Usage + CPU Usage + Filesystem + Network In + Network Out 
* Application Isolation
* [Docker](https://www.docker.com/)
* Docker = Used to containerize the micro services
* Kubernetes = Used to orchestrate the micro services
* [Docker Compose](https://docs.docker.com/get-started/08_using_compose/) is a tool
* docker commands are focused on only one container (or image) at once while docker-compose manage several containers docker
* Docker Image = Docker Container
* Docker Desktop includes Docker Engine and Kubernetes
* Image is like a Class and Container is like an Object
* For one Image, we can have any number of Containers running
* Image is static version and Container is running version of image
* We have to publish container port ( for ex : 5000 ) to host port ( for ex : 5000 ) for running & accessing application using docker in local
* Docker Image contains JDK , Application Jar, Libraries, Dependant Libraries , Softwares etc that are need to run the Container on Docker Engine
* Cloud providers ( AWS, Azure, GCP ) provide container based services
* AWS provides a service called "Elastic Container Service" for Docker
* Azure provides a service called "Azure Container Service" for Docker
* Docker official Images are curated set of docker repositories hosted on Docker Hub
* Spring-Boot creates the docker image using Spring Boot maven plugin configured in pom.xml
* Docker Containers Are Everywhere: Linux, Windows, Data center, Cloud, Serverless, etc
* Docker Hub is the world's easiest way to create, manage, and deliver your teams' container applications

# Docker Components
1. Docker Client
2. Docker Server
3. Docker Machine
4. Docker Hub
5. Docker Compose
6. Docker Engine

# Terminology
* Docker
* OCI = Open Container Initiative
* [Kubernetes](https://kubernetes.io/) = Container Orchestration
* Kubernetes VS Docker
* Docker Registry = [Docker Hub](https://hub.docker.com/)
* Docker Repository = sanjeevkomma/todo-rest-api-h2
* Docker Tag = 1.0.0.RELEASE
* Image = A Static Template -- A Set of Bytes = [ It contains JDK , Application Jar, Libraries, Dependant Libraries , Softwares etc that are need to run the Container on Docker Engine] 
* Container = Running version of the Image
* Host Port : Container Port = -p 5000 : 5000
* Docker Desktop = Docker Client + Docker Daemon ( Docker Engine )
* Docker Client = 
* Docker Daemon = Docker Engine
* Docker Engine =  
* Orchestration = Arrangement
* Automation
* Container Based Applications =
* Seamlessly = Continuously
* Route = Route is basically an URL through which you can access the application 
* Pod = Each Pod can have one or more Containers
* Node
* Cluster = Group
* Virtual Machine
* Physical Machine
* Platform

# Installation
* [Install Docker Desktop on Windows](https://docs.docker.com/desktop/windows/install/)
* [Installing PowerShell on Windows](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.2)
* [Install Docker Compose](https://docs.docker.com/compose/install/)


# Commands
* $ docker version
* $ docker --version
* $ docker-compose --version
* $ docker-machine ip  = default machine with IP 192.168.99.100
* $ docker run [OPTIONS] IMAGE [COMMAND] [ARG...] 
* $ docker run [registry-name]/[repository-name]:[tag-name] = To download image from docker hub & run 
* $ docker run -p 5000:5000 [registry-name]/[repository-name]:[tag-name] = To run the application using docker in local
* $ docker run -p 5000:5000 sanjeevkomma/todo-rest-api-h2:1.0.0.RELEASE
* $ docker run -p 5001:5000 sanjeevkomma/todo-rest-api-h2:1.0.0.RELEASE  
* $ docker run -p 5000:5000 -d sanjeevkomma/todo-rest-api-h2:1.0.0.RELEASE = detach ( d option ) the container to  command prompt
* $ docker run -p 5001:5000 -d sanjeevkomma/todo-rest-api-h2:1.0.0.RELEASE =  running the same image on another port
* $ docker logs [docker-id] = to check logs  
* $ docker logs -f [docker-id] = to check logs
* $ docker container ls = to list the running containers
* $ docker container ls -a = to list all the containers irrespective of status
* $ docker container stop [docker-id] = to stop the container
* $ docker images = to list the images existed locally
* $ docker tag local-image:tagname new-repo:tagname
* $ docker push new-repo:tagname
* $ docker pull in28min/mmv2-currency-exchange-service:0.0.12-SNAPSHOT = To pull image registry from Docker hub into local machine
* $ docker tag in28min/todo-rest-api-h2:1.0.0.RELEASE in28min/todo-rest-api-h2:latest = 
* $ docker pull mysql = It will pull latest ( by default ) [mysql docker image](https://hub.docker.com/_/mysql) to local
* $ docker search mysql = to search image locally
* $ docker image history [docker-image-id] = to see history of docker image
* $ docker image inspect [docker-image-id] = to see all the details of the docker image
* $ docker image remove [docker-image-id] = to remove the docker image from local
* $ docker create [OPTIONS] IMAGE [COMMAND] [ARG...] = to create the docker image
* $ docker container run -p 5000:5000 -d sanjeevkomma/todo-rest-api-h2:1.0.0.RELEASE = to create container from image and run the container
* $ docker container pause [docker-id] = to pause the container running
* $ docker container unpause [docker-id] = to un pause the container running
* $ docker container inspect [docker-id] = to see all the details of the docker container
* $ docker container ls -a = to show all the containers ( running + stopped ) locally 
* $ docker container ls = to show all the containers ( running  ) locally 
* $ docker container prune = to remove all the stopped containers locally
* $ docker container logs -f [docker-id] = to check logs of docker container
* $ docker container stop [docker-id] = SIGTERM = this is graceful stopping of the container
* $ docker container kill [docker-id] = SIGKILL = immediately terminates the process
* $ docker container run -p 5000:5000 -d --restart=no sanjeevkomma/todo-rest-api-h2:1.0.0.RELEASE = This container will not be auto restarted after docker daemon/engine restart
* $ docker container run -p 5000:5000 -d --restart=always sanjeevkomma/todo-rest-api-h2:1.0.0.RELEASE = This container will be auto restarted after docker daemon/engine restart
* $ docker events = to see all the events happening in docker daemon/engine
* $ docker top [container-id] = to show all the processes running in the container
* $ docker stats = to show all the stats / metrics ( for ex : Memory, CPU usage ) of each running container
* $ docker container run -p 5000:5000 -m 512m --cpu-quota 50000 -d --restart=no sanjeevkomma/todo-rest-api-h2:1.0.0.RELEASE = to give memory & CPU usage for container
* $ docker system df = to see all the images & containers , local volumes, memory etc
* $ spring-boot:build-image = It creates the docker image using Spring Boot maven plugin configured in pom.xml
* $ docker-compose --version = It help to run / launch multiple docker containers using YAML file 
* $ docker-compose up = it will run docker-compose.yaml
* $ docker build -t python-app = To create Docker image of python application
* $ docker run python-app === To run docker image 
* $ docker login 

# Create, Run Docker Image in Local Machine and Push to Docker Hub
# Approach using "Dockerfile" 
1. Have "Dockerfile" file in project root directory
2. $ docker build -t sanjeevkomma/spring-boot-h2-database:0.0.1.RELEASE .
3. $ docker run -p 8080:8080 -t sanjeevkomma/spring-boot-h2-database:0.0.1.RELEASE
4. $ docker push sanjeevkomma/spring-boot-h2-database:0.0.1.RELEASE
5. [Spring Boot docker reference](https://spring.io/guides/gs/spring-boot-docker/)
# Approach using maven plugin in "Spring Boot" POM.XML [ No need of Dockerfile ]
1. POM.XML changes
* ![image](https://user-images.githubusercontent.com/7721150/153161545-2a3ed2bc-f166-4915-b810-5c5e5b3d88e7.png)
2. Eclipse Run Build
* ![image](https://user-images.githubusercontent.com/7721150/153161862-017405b3-44b0-4548-a467-832d805d514b.png)
3. $ docker run -p 8080:8080 -t docker.io/sanjeevkomma/mmv2-currency-exchange-service:0.0.11-SNAPSHOT
4. $ docker run -p 8100:8100 -t docker.io/sanjeevkomma/mmv2-currency-conversion-service:0.0.11-SNAPSHOT
5. $ docker push docker.io/sanjeevkomma/mmv2-currency-exchange-service:0.0.11-SNAPSHOT
6. $ docker push docker.io/sanjeevkomma/mmv2-currency-conversion-service:0.0.11-SNAPSHOT
7. $ kubectl create deployment currency-exchange --image=sanjeevkomma/mmv2-currency-exchange-service:0.0.11-SNAPSHOT
8. $ kubectl expose deployment currency-exchange --type=LoadBalancer --port=8000
9. $ kubectl create deployment currency-conversion --image=sanjeevkomma/mmv2-currency-conversion-service:0.0.11-SNAPSHOT
10. $ kubectl expose deployment currency-conversion --type=LoadBalancer --port=8100


# Docker Data Set
1. Hyper-V
2. WSL 2
3. Windows Containers

# Tutorial
* [What is Docker?](https://www.youtube.com/watch?v=-LeV_c1zG-s)
* [Docker Tutorial](https://www.javatpoint.com/docker-tutorial)
* [Docker Hub Repositories for example](https://hub.docker.com/u/in28min)
* [Docker Java Application Example](https://www.javatpoint.com/docker-java-example)
* [Docker Dockerfile](https://www.javatpoint.com/docker-dockerfile)


# Reference
* [Docker Engine overview](https://docs.docker.com/engine/)
* [Build and Ship any Application Anywhere](https://hub.docker.com/)
* [Overview of Docker Compose](https://docs.docker.com/compose/)
* [openjdk Docker Image](https://hub.docker.com/_/openjdk)

# Docker 
1. Traditional Deployment
* ![image](https://user-images.githubusercontent.com/7721150/147632231-26e460b4-816c-4c46-9044-c6a8fc778ead.png)
2. Deployments using Vitual Machine
* ![image](https://user-images.githubusercontent.com/7721150/147655537-376a6734-4198-4619-9fd2-50a3796d9fa0.png)
3. Deployments using Docker
* ![image](https://user-images.githubusercontent.com/7721150/146746723-1cda73c7-4947-4037-9287-5aaf985fe88e.png)
4. Docker Architecture
* ![image](https://user-images.githubusercontent.com/7721150/147639688-843209e9-1da1-4f15-81fd-966bed28d59f.png)
5. Docker
* ![image](https://user-images.githubusercontent.com/7721150/149747268-b7774451-8380-4ecd-b326-cad03101971c.png)
6. Docker Today
* ![image](https://user-images.githubusercontent.com/7721150/150389977-1601fa43-c96a-4b9e-b405-f7c0426b9845.png)


