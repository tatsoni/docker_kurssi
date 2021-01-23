FROM ubuntu:16.04

WORKDIR /mydir
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get update && apt install -y nodejs
RUN apt-get update && apt install -y git
RUN git clone https://github.com/docker-hy/backend-example-docker.git

RUN cd backend-example-docker && npm install

EXPOSE 8000

CMD cd backend-example-docker && npm start


