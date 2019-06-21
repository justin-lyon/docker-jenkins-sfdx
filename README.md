# docker-jenkins-sfdx
> Preconfigured Dockerized Jenkins, ready for SalesforceDX Jobs.

## Setup

Install [docker](https://hub.docker.com/) on your machine.

```bash
# Build the Docker Image from the Dockerfile
# -t: Name the resulting image.
docker build -t jenkins-sfdx .

# Run the Docker Image
# --name: Names the resulting container
# -p: opens port forwarding to the container
# -v: establishes a volume
docker run --name jenkins-poc -p 8080:8080 -v jenkins-config:/var/jenkins_home jenkins-sfdx
```

1. Open Jenkins UI at host:8080.
1. Enter the Initial Admin Password provided by from the command line.
1. Click "Select Plugins to Install"
1. Click "None"
1. Click "Install"
1. Create your new admin user.
1. Set your Jenkins URL.
1. Click Save and Finish.
1. Click Start Using Jenkins.

## Info
The [jenkins/jenkins](https://hub.docker.com/r/jenkins/jenkins/) base image is a debian install and creates a jenkins user.

The Dockerfile adds nodejs (includes npm) and with npm installs the sfdx-cli.

`docker build` on the Dockerfile will always result in the latest from jenkins/jenkins and sfdx-cli. `nodejs` is installed with version `10.x`.
