FROM 10.0.0.6:5000/centos-lamp:latest
MAINTAINER test "wfzhu@alauda.io"
RUN yum update -y
RUN yum install -y php-mcrypt mcrypt && yum clean all
ADD ayrui-finecms-master.zip /tmp
ADD finecms.tgz /tmp
ADD mysql.fine.sql /tmp
RUN tar -xzf /tmp/finecms.tgz -C /var/www/html/ && chown -R apache. /var/www/html/
EXPOSE 80
ENTRYPOINT ["/run.sh"]
