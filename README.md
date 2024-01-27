# AEM Docker

This image was created with the intention of help with the local development of applications using AEM.

## Getting Started

It is important that we know which ports were configured in the image, because they will be necessary to create your container.

Ports:

- 4502: Default Author Port
- 5502: Custom Debug Port

### Usage

#### Building image

Need include jar (aem-author-p4502.jar) path in Dockerfile before build image

```shell
docker build . -t aem-author:1.0
```

#### Creating container

The simplest way to create a container using this image:

```shell
docker run -it -p 4502:4502 --name <container_name> aem-author:1.0
```
Remember, the first run of the AEM jar requires a configuration to enter admin username and password. Therefore, we use the "-it" parameter to interact with the console.

To configure the debug port in your container, simply expose port 5502:

```shell
docker run -it -p 4502:4502 -p 5502:5502 --name <container_name> aem-author:1.0
```

#### Volumes

An extra configuration is to expose AEM logs to be read without entering the container. To do this, we can create a volume using the "-v" command:

```shell
docker run -it -p 4502:4502 -p 5502:5502 --name <container_name> -v /<local_path>/logs:/aem/crx-quickstart/logs aem-author:1.0
```

## This image is build with

* [redhat/ubi8:8.9](https://hub.docker.com/layers/redhat/ubi8/8.9/images/sha256-54302a61d8482e51dffb04936fd571c9ba33c0f52c7e35392d6e1dfd1c242580?context=explore)
* [java-11-openjdk](https://openjdk.org/projects/jdk/11/)

## Author

* **Renan Viana** - [renanviana](https://github.com/renanviana)
