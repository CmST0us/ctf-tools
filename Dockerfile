
FROM ubuntu
LABEL Name=ctf-tools Version=0.0.1 maintainer="eric3u@outlook.com"
WORKDIR /opt

RUN mkdir tools
COPY ./tools ./tools
COPY sources.list /etc/apt/sources.list

RUN apt-get -y update && apt-get install -y vim \
nano \
gcc \
git \
cmake \
python2.7 \
python \
gdb \
netcat \
lib32ncurses5

RUN ./tools/binwalk/setup.py install