FROM       cyberdojofoundation/ubuntu-build-essential:17.04
MAINTAINER Jon Jagger <jon@jaggersoft.com>

RUN apt-get update && apt-get install --yes \
  curl

RUN curl --silent --location https://deb.nodesource.com/setup_4.x | bash -

RUN apt-get update && apt-get install --yes \
  nodejs

RUN npm install -g elm
