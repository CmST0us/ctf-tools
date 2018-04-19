
FROM ubuntu
LABEL Name=ctf-tool Version=0.0.1 maintainer="eric3u@outlook.com"
WORKDIR /opt
COPY tools .
RUN apt-get -y update && apt-get install -y vim \
nano \
gcc \
git \
cmake \
python2.7 \
gdb \
netcat \
lib32ncurses5 \