# AEM Docker

## Building image

Need include jar (aem-author-p4502.jar) path in Dockerfile before build image

```shell
docker build . -t aem-author:1.0
```

## Creating container

```shell
docker run -it -p 4502:4502 -p 5502:5502 -v ./logs:/aem/crx-quickstart/logs --name <container_name> aem-author:1.0
```