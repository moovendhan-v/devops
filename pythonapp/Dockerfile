FROM ubuntu:latest
WORKDIR /var/app
RUN apt update -y
RUN apt upgrade -y
RUN apt install htop -y
RUN apt install bc -y
CMD [ "/bin/bc" , "-i" ]
