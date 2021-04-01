FROM ubuntu:16.04

WORKDIR /mydir
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
#RUN apt-get update && apt install -y nodejs
#RUN apt-get update && apt install -y git
#RUN git clone https://github.com/docker-hy/frontend-example-docker.git

RUN cd frontend-example-docker && npm install

EXPOSE 5000

CMD cd frontend-example-docker && npm start


