# intall jenkins
FROM jenkins/jenkins:lts

# install python3.8.2
USER root
RUN apt-get update && apt-get -y install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev
RUN curl -O https://www.python.org/ftp/python/3.8.2/Python-3.8.2.tar.xz
RUN tar -xf Python-3.8.2.tar.xz
RUN cd Python-3.8.2 && pwd && ./configure && make -j 2 && make altinstall && python3.8 --version
RUN python3.8 -m pip install sklearn protobuf requests

#RUN apt-get install protobuf-compiler

# install docker
RUN curl -sSL https://get.docker.com/ | sh



