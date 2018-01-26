FROM  cyberdojofoundation/ubuntu-build-essential:18.04
LABEL maintiner=jon@jaggersoft.com

RUN apt-get update
RUN apt-get install --yes tzdata
RUN apt-get install --yes php-cli

RUN php --version | grep -q 7.1.11