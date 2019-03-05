FROM noway56/myubuntu
MAINTAINER Lu Wu "wulu@nuanxin-health.com"
LABEL author="Lu Wu"


RUN apt-get update && \
    apt-get install -y python-pip python-dev cdbs quilt libzmq3-dev ansible sshfs sshpass python-yaml

RUN rm -rfv /var/lib/apt/lists/* && \
    apt clean &&\
    apt autoremove

