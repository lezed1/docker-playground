FROM ubuntu
RUN apt-get update
RUN apt-get upgrade
RUN cat /etc/apt/sources.list
CMD echo "Hello"
