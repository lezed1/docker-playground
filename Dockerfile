FROM ubuntu
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install htop
CMD echo "Hello"
