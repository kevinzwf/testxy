FROM 10.0.0.6:5000/centos-lamp:latest
MAINTAINER test "wfzhu@alauda.io"
RUN yum update -y
RUN yum install -y php-mcrypt mcrypt && yum clean all
#ADD dayrui-finecms-master.zip /tmp
ADD finecms.tgz /
ADD mysql.fine.sql /
ADD run.sh /run.sh
RUN tar -xzf /finecms.tgz -C /var/www/html/ && chown -R apache. /var/www/html/
RUN chmod a+x /run.sh
EXPOSE 80
ENTRYPOINT ["/run.sh"]
