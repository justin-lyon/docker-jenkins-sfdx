# docker-jenkins-sfdx
> Dockerfile that adds sfdx-cli to the base [jenkins/jenkins:lts](https://hub.docker.com/r/jenkins/jenkins/) image.

## Setup

Install [docker](https://hub.docker.com/) on your machine.

```bash
# Build the Docker Image from the Dockerfile
docker build -t jenkins-sfdx .

# Run the Docker Image
# --name: Names the resulting container
# -p: opens port forwarding to the container
# -v: establishes a volume
docker run --name jenkins-poc -p 8080:8080 -p 50000:50000 -v /var/jenkins_home jenkins-sfdx
```

## Info
The [jenkins/jenkins](https://hub.docker.com/r/jenkins/jenkins/) base image is a debian install and creates a jenkins user.

The Dockerfile adds nodejs (includes npm) and with npm installs the sfdx-cli.

`docker build` on the Dockerfile will always result in the latest from jenkins/jenkins and sfdx-cli. `nodejs` is installed with version `10.x`.
