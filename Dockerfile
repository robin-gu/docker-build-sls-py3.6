FROM python:3.6.13

# RUN sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN curl -fsSL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get update -yq && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install nodejs default-jdk netselect-apt && \
    rm -rf /var/lib/apt/lists/*
# RUN cat registry=https://registry.npm.taobao.org/ > ~/.npmrc
RUN npm install -g serverless
ENV SERVERLESS_PLATFORM_VENDOR tencent
ADD https://coding-public-generic.pkg.coding.net/cci/release/cci-agent/linux/amd64/cci-agent .
RUN chmod a+x ./cci-agent