FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y curl
RUN apt-get autoremove
RUN apt install -y wget
RUN wget http://ftp.gnu.org/gnu/libc/glibc-2.34.tar.gz && \
    tar -xzf glibc-2.34.tar.gz && \
    cd glibc-2.34  

COPY _output/my-echo /my-echo

EXPOSE 1323

ENTRYPOINT ["/my-echo"]
