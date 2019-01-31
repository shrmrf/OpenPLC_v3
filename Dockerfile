FROM ubuntu:18.04

RUN apt-get update && apt-get install -y build-essential pkg-config bison flex autoconf automake libtool make git python2.7 python-pip sqlite3 cmake git
RUN pip install flask flask-login pyserial
COPY . /workdir
RUN cd /workdir && ./install.sh docker
WORKDIR /workdir
ENTRYPOINT ["./start_openplc.sh"]