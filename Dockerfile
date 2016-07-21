FROM mumba/docker-compose-machine

MAINTAINER Greg Keys <gregkeys@gmail.com>

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get update -q \
    && apt-get -y -q install --no-install-recommends --fix-missing \
            nodejs \
            git \
            python-pip \
            build-essential
    && pip install awscli \
    && npm install -g \
        bower \
        node-sass \
        typings \
        typescript@next \
        @mumbacloud/dmport
