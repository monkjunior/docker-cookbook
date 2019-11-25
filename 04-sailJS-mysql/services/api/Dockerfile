FROM node:8

LABEL maintainer="vungocson998@gmail.com"

RUN apt-get update

RUN apt-get install -y \
  xvfb \
  x11-xkb-utils \
  xfonts-100dpi \
  xfonts-75dpi \
  xfonts-scalable \
  xfonts-cyrillic \
  x11-apps \
  clang \
  libdbus-1-dev \
  libgtk2.0-dev \
  libnotify-dev \
  libgnome-keyring-dev \
  libgconf2-dev \
  libasound2-dev \
  libcap-dev \
  libcups2-dev \
  libxtst-dev \
  libxss1 \
  libnss3-dev \
  gcc-multilib \
  g++-multilib

ENV DEBUG="nightmare"

RUN mkdir /usr/src/app

COPY script.sh /script.sh

RUN npm install -g npm@latest

RUN npm install -g db-migrate

RUN npm install sails@1.0 -g

RUN npm install nightmare xvfb

RUN chmod +x /script.sh

COPY entrypoint.sh /entrypoint
RUN chmod +x /entrypoint
#ENTRYPOINT ["/entrypoint", "node"]

CMD ./script.sh
