#Designed to be used as an Ansible node

FROM centos
RUN yum install -y wget vim openssh-server python2
#create all encrytion files i.e rsa,dsa etc.. in /etc/ssh directory
RUN ssh-keygen -A
EXPOSE 22
#start the sshd service so other containers can login via port 22
RUN /usr/sbin/sshd
#need a deamon to keep the container running
ADD deamon.sh /usr/local
RUN chmod 0777 /usr/local/deamon.sh
CMD ["/usr/local/deamon.sh"]
