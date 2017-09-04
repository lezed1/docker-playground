FROM ubuntu
RUN apt-get update
RUN apt-get upgrade
RUN echo /etc/apt/sources.list
CMD echo "Hello"
