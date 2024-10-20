### What is Docker?

- Docker is a containerization platform for developing, packaging, shipping, and running applications.
- It provides the ability to run an application in an isolated environment called a container.
- Makes deployment and development efficient.

### Docker Image

- Recipe card for your software
- Includes all the necessary ingredients (code, configuration, etc) to make the software work
- can be built and shared easily
  ⇒ check image ⇒ docker image

### Docker Container

- Now That you have your recipe, you can create as many containers as you want
- each holding an instance of your software
- they share the some core recipe(docker image) but can have different setting or data
- A way to package an application with all the necessary dependencies and configuration.
- it can be easily shared.
- Makes deployment and development efficient,

**Docker**

- Low impact on OS, very fast, low disk space usage.
- Sharing, re-building, and distribution are easy
- Encapsulate apps instead of the whole machine.

**VMs**

- High impact on OS, Slower high disk space usage.
- Sharing re-building and distribution is challenging.
- Encapsulate the whole machine.

### Main Components of Docker

- Docker File
- Docker Image
- Docker Container
- Docker Registry

### What is a Docker file

⇒ It is a simple text file with instructions to build an image.

### Docker Registry

⇒ A docker registry is a central repository for storing and distributing docker images.

### Create the First Docker File

```jsx
// Set Version
FROM node:20

// set warking direcotry
WORKDIR /myapp
//current directory theke copy kore working directory te pest koro
COPY ..

// Install all depandancy
RUN npm install

//set port
EXPORSE 300
//* run app
CMD ["npm", "start"]
```

### Create a docker image

- command ⇒ docker build .
- check docker image list ⇒ docker image ls

### Create a container

- docker run -p 3000:3000 docker image
- stop docker ⇒ docker stop docker name

### Container Management

- check all running containers ⇒ docker ps
- check all containers ⇒ docker ps -a
- remove docker container ⇒ docker rm imageName
- automatic when docker stop that time container remove ⇒ docker run -d —rm -p port:port imageName
- docker container stop ⇒ docker stop container name
- set docker name ⇒ docker run -d —rm —name “container name” -p port: port imageName

### Managing Docker Image

- Check docker image ⇒ docker image ls
- set docker image when creating ⇒ docker build -t “mywebapp:01” .
- delete image ⇒ docker rmi imageName
- rename docker image ⇒ docker tag currentImageName newName

### What Is we update project

⇒ existing project any features change like testing, add a new test case. that time how do you update the existing docker image?

- first create a docker image ⇒ docker build -t mywebApp:02 .
- start container ⇒ docker run -d —rm —name “mywebapp” -p 3001:3000 myWebapp02

### Pre-Defined Docker Image

⇒ use build-in the docker image. docker provides lots of images.

- build in docker image use ⇒ docker pull image
- run the docker build in image ⇒ docker run imageName:latest

### Sharing Docker Image

- go to the docker hub or create a repository
- push the docker image into the docker hub
  - docker login in your vs code
  - create docker image. must be the image or repo name the same.
  - push docker ⇒ docker push imageName

### Using Our Image Remotely Pull Images

⇒ first must be set up docker. then go docker hub and pull the image.

⇒ then run the image

### Understand Docker Volumes

A Docker volume is **an independent file system entirely managed by Docker and exists as a normal file or directory on the host, where data is persisted**.

- create docker volume ⇒ docker run -it —rm -v volumeName:directory name imageName
- check volume ⇒ docker volume ls
- check volume details ⇒ docker volume inspect myvolume

### What Are Bind Mounts

⇒ Bind mounts have been around since the early days of Docker. Bind mounts have limited functionality compared to [volumes](https://docs.docker.com/engine/storage/volumes/). When you use a bind mount, a file or directory on the host machine is mounted into a container. The file or directory is referenced by its absolute path on the host machine. By contrast, when you use a volume, a new directory is created within Docker's storage directory on the host machine, and Docker manages that directory's contents.

- create bind mount ⇒ docker run -v filePath:/my/servces.txt —rm imageName

### What is? .dockerignore

⇒ its kind of gitignore

### Communication From/To Containers

- Working With APis
  ```jsx
  FROM python
  WORKDIR /myApp
  copy . .
  //* this point r install when you need external package
  RUn pip install request
  CMD ["ython", "api_demo.py"]
  ```
- Communication Container & local DB
- Communication Between containers

### Creating Docker Network

⇒ Docker networking **enables a user to link a Docker container to as many networks as he/she requires**. Docker Networks are used to provide complete isolation for Docker containers. Note: A user can add containers to more than one network. Let's move forward and look at the Advantages of networking.

- all command check ⇒ docker network —help
- create network ⇒ docker network create networkName
- check network ⇒ docker network ls
- all command check ⇒ docker network —help
- create network ⇒ docker network create networkName
- check network ⇒ docker network ls
- include network with docker image ⇒ docker run —rm —network networkName imageId

### Docker Compose

⇒ configuration file to manage multiple containers running on the same machine.its kind of yml file

### Docker Compose

⇒ configuration file to manage multiple containers running on the same machine.its kind of yml file

⇒ always docker command very large that prove solve docker compose. its provide simple command

- file create ⇒ file.yml

```jsx
services:
	mySqlDb:
		image: "mysql:lates"
		enveirment:
			- mySQL="root"
			- pass = "userInf"
		containner_name: "mysqldb"
```

- run docker-compose ⇒ run docker-compose up
- down docker compose = docker-compose down
