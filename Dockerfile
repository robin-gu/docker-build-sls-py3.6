FROM python:3.6.13

# RUN sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN apt-get update -yq && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install wget curl nodejs && \
    rm -rf /var/lib/apt/lists/*
# RUN cat registry=https://registry.npm.taobao.org/ > ~/.npmrc
RUN npm install -g serverless