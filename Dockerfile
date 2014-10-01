FROM ubuntu:latest

RUN mkdir /tmp/export/
ADD ./build/export.tar /tmp/export/
RUN mv /tmp/export /var/export

EXPOSE 8008

ENTRYPOINT /var/export/service.bash 
