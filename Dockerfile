FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y python3

RUN mkdir /root/A
RUN mkdir /root/B
RUN mkdir /root/C
RUN mkdir /root/files

WORKDIR /root
RUN git clone https://github.com/dotoling/assignment_week8.git

WORKDIR /root/files
RUN touch a.txt
RUN touch b.txt
RUN touch c.txt

WORKDIR /root
