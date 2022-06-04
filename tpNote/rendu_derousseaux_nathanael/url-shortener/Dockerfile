FROM debian:10

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_15.x | bash -
RUN apt-get install -y nodejs

COPY sources /app

WORKDIR /app

RUN npm install

COPY startup.sh /scripts/startup.sh

CMD /scripts/startup.sh

