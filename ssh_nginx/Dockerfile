FROM nginx

RUN apt update
RUN apt install ssh -y
RUN useradd remote_user && \
    echo "remote_user:1234" | chpasswd && \
    mkdir -p /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh

COPY remote-key.pub /home/remote_user/.ssh/authorized_keys

RUN chown remote_user:remote_user   -R /home/remote_user && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

RUN ssh-keygen -A

#RUN /usr/sbin/sshd-keygen

#RUN apt install python3


CMD /usr/sbin/sshd -D


