FROM amd64/ubuntu:18.04

ADD . .
WORKDIR /

RUN apt update -y
RUN apt upgrade -y
RUN apt-get install apt-transport-https -y
RUN apt-get install git -y
RUN apt-get install curl -y
RUN apt-get install ca-certificates -y

RUN apt-get install python3.6 -y
RUN apt-get install python3-pip -y

RUN pip3 install flask
RUN pip3 install boto3

CMD /bin/bash