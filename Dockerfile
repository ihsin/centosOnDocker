FROM centos
RUN yum -y update \
    && yum install -y wget vim git
ADD deamon.sh /usr/local
RUN chmod 0777 /usr/local/deamon.sh
CMD ["/usr/local/deamon.sh"]