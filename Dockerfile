FROM 10.0.0.6:5000/centos:latest
MAINTAINER test "wfzhu@alauda.io"
RUN yum update -y
RUN yum install -y httpd mariadb-server php php-mysql zip unzip && yum clean all
ADD ayrui-finecms-master.zip /tmp
RUN cd /tmp && unzip /tmp/dayrui-finecms-master.zip
RUN cp -r /tmp/finecms/v5/* /var/www/html/ && chown -R apache. /var/www/html/

EXPOSE 80
ENTRYPOINT ["/run.sh"]
