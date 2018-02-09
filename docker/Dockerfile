FROM  cyberdojofoundation/ubuntu-build-essential:16.04
LABEL maintainer=jon@jaggersoft.com

RUN apt-get update \
 && apt-get install --yes curl \
 && curl --silent --location https://deb.nodesource.com/setup_4.x | bash -

RUN apt-get update \
 && apt-get install --yes nodejs

RUN npm install -g elm
