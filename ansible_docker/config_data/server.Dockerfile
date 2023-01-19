FROM ubuntu:18.04

RUN apt update -y

RUN apt upgrade -y

RUN apt install -y python3-pip git vim iproute2

RUN apt install openssh-server -y

RUN echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config

RUN ssh-keygen -A
# RUN echo "user_name:password" | chpasswd

RUN echo "root:password" | chpasswd

CMD ["/usr/sbin/sshd", "-D"]


CMD ["/usr/sbin/sshd", "-D"]





 
