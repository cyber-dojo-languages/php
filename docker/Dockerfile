FROM  cyberdojofoundation/ubuntu-build-essential:18.04
LABEL maintiner=jon@jaggersoft.com

ENV TZ Europe/London

RUN echo $TZ > /etc/timezone && \
    apt-get update && apt-get install -y tzdata && \
    rm /etc/localtime && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata && \
    apt-get clean

RUN apt-get install --yes php-cli

RUN php --version | grep -q 7.1.11