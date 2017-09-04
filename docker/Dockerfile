FROM  cyberdojofoundation/ubuntu-build-essential:17.04
LABEL maintiner=jon@jaggersoft.com

RUN apt-get update
RUN apt-get install --yes php-cli

RUN php --version
RUN php --version | grep -q 7.0.18