FROM centos:7
RUN yum install -y wget sudo net-tools ntp ntpdate unzip rpm nfs-common tmux screen ncurses-devel lvm2* telnet
RUN chkconfig ntpd on 
RUN wget -nv http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.2.2.0/ambari.repo -O /etc/yum.repos.d/ambari.repo
RUN rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-7.noarch.rpm
RUN yum -y update
RUN yum -y install python-pip && \
    yum groupinstall 'Development Tools' -y && \
    yum install -y python-devel && \
    pip install --upgrade pip && \
    pip install Glances
RUN yum install -y ambari-server postgresql-jdbc
RUN ambari-server setup --database=postgres --databasehost=postgres.dev --databaseport=5432 --databasename=ambari --postgresschema=ambari  --databaseusername=ambari --databasepassword=dev --silent
RUN ambari-server setup --jdbc-db postgres --jdbc-driver=/usr/share/java/postgresql-jdbc.jar
ADD scripts/start.sh /start.sh
CMD /start.sh
