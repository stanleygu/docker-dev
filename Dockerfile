# Image for RoadRunner Simulator
#
# VERSION               0.0.1

FROM        ubuntu
MAINTAINER  Stanley Gu <stanleygu@gmail.com>
RUN         apt-get update -qq

# Adding PPAs
RUN         apt-get install -q -y python-software-properties
RUN         add-apt-repository -y ppa:chris-lea/zeromq
RUN         add-apt-repository -y ppa:chris-lea/node.js
RUN         add-apt-repository -y ppa:git-core/ppa
RUN         apt-get update -qq

# Installing packages
RUN         apt-get install -q -y curl
RUN         apt-get install -q -y wget
RUN         apt-get install -y -q python-dev
RUN         apt-get install -y -q python-pip
RUN         apt-get install -y -q build-essential
RUN         apt-get install -y -q git
RUN         apt-get install -y -q nodejs
# Install ZMQ
RUN         apt-get -y -q install libzmq3
# Install ZeroRPC
RUN         apt-get install -y libevent-dev python-pip python-gevent msgpack-python
RUN         pip install zerorpc

