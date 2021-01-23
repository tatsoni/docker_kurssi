FROM ruby:2.6.0

WORKDIR /mydir
RUN apt-get update && apt install -y git
RUN git clone https://github.com/docker-hy/rails-example-project.git

RUN apt-get update && apt-get install -y nodejs

RUN cd rails-example-project && gem install bundler
RUN cd rails-example-project && bundle install
RUN cd rails-example-project && rails db:migrate

CMD cd rails-example-project && rails s
