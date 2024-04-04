# DS CMD
- https://jeroenjanssens.com/dsatcl/
- https://github.com/datasciencetoolbox/datasciencetoolbox 
- https://blog.appsecco.com/docker-container-for-data-science-toolbox-8b85404946db

- https://csvkit.readthedocs.io/en/latest/index.html

Github
- https://github.com/appsecco/docker-data-science-toolbox
- https://github.com/appsecco/docker-data-science-toolbox/blob/master/tool-list.md
- https://github.com/jeroenjanssens/dsutils.git


# Docker

```bash
 docker pull datasciencetoolbox/dsatcl2e
```

```Dockerfile
# https://github.com/appsecco/docker-data-science-toolbox/blob/master/Dockerfile

# Data Science Tool set in a Container
# docker run -v `pwd`:/data -it appsecco/data-science-toolbox sh

FROM alpine:latest
LABEL MAINTAINER="Madhu Akula"

RUN apk --no-cache add py-pip groff bash bc git curl \
		coreutils imagemagick findutils grep man \
		less parallel p7zip nodejs-lts sudo \
		sed tar tree unrar unzip jq

RUN pip install awscli nose bigmler csvkit \
   && npm install -g cowsay json2csv xml2json-command

COPY scripts/* /usr/local/bin/

RUN rm -rf /var/cache/apk/*

WORKDIR /data
```


# Tools
- https://explainshell.com/ 

## csvkit
```bash
sudo apt install csvkit
```
