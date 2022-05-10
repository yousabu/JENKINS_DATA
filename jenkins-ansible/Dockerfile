FROM jenkins/jenkins

USER root

RUN apt update

RUN apt upgrade -y

RUN apt-get install -y python3-pip

RUN curl -O https://bootstrap.pypa.io/get-pip.py  && \
    python3 get-pip.py && \
    pip install ansible --upgrade

USER jenkins
