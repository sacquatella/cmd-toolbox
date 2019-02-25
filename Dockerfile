FROM ubuntu:18.04

LABEL version="0.4"
LABEL description="Ubuntu image with a set of command line tools preinstalled."

RUN apt-get update \
    && apt-get install -y \
       apache2-utils \
       cbm \
       curl \
       dnsutils \
       emacs-nox \
       gettext \
       git \
       htop \
       iftop \
       iputils-ping \
       ldap-utils \
       mc \
       nano \
       ncdu \
       netcat \
       powerline \
       python-pip \
       ranger \
       siege \
       speedometer \
       telnet \
       tig \
       tmux \
       tree \
       vim \
       wget \
       yaml-mode golang-mode \
     && pip install --upgrade setuptools \ 
     && pip --disable-pip-version-check -q install powerline-gitstatus \
     && pip --disable-pip-version-check -q install cqlsh \
     && curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
     && curl -LO https://github.com/tsenart/vegeta/releases/download/cli%2Fv12.0.0/vegeta-12.0.0-linux-arm64.tar.gz \
     && curl -LO https://github.com/outbrain/zookeepercli/releases/download/v1.0.12/zookeepercli-linux-amd64-binary.tar.gz \
     && apt-get clean \
     && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY bash-powerline.sh bash-powerline.sh
COPY init.el ~/.emacs.d/init.el
RUN  cat /bash-powerline.sh >> /root/.bashrc

RUN mv /kubectl /usr/local/bin
RUN chmod +x /usr/local/bin/kubectl
RUN tar zxvf /vegeta-12.0.0-linux-arm64.tar.gz -C /usr/local/bin
RUN tar zxvf /zookeepercli-linux-amd64-binary.tar.gz -C /usr/local/bin

#CMD ["/bin/bash"]
CMD ["sh", "-c", "tail -f /dev/null"]
