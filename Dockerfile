
FROM ubuntu
LABEL Name=ctf-tools Version=0.0.1 maintainer="eric3u@outlook.com"
WORKDIR /opt

RUN mkdir tools
COPY ./tools ./tools

RUN apt-get -y update
RUN apt-get install -y vim \
nano \
gcc \
git \
cmake \
python2.7 \
python \
gdb \
netcat \
lib32ncurses5

WORKDIR /opt/tools/binwalk
RUN ./setup.py install

WORKDIR /opt