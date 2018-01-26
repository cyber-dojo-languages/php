FROM  cyberdojofoundation/ubuntu-build-essential:18.04
LABEL maintiner=jon@jaggersoft.com

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install --yes php-cli

RUN php --version | grep -q 7.1.11