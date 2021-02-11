# docker buildx build --platform linux/amd64 -t sshd:latest .
# docker run -d -p 2222:22 -v ${HOME}/projects:/home/ubuntu/projects --hostname localssh --name localssh sshd
# ssh -p 2222 -l alex localhost
FROM ubuntu:rolling

RUN apt update && apt install openssh-server gnupg2 ansible sudo -y
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 501 alex
RUN echo 'alex:test' | chpasswd
RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
