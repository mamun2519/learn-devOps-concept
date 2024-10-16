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
