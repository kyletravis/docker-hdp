docker save node | pigz > images/node.tar.gz
docker save ambari-server | pigz > images/ambari-server.tar.gz
docker save pgsql | pigz > images/pgsql.tar.gz
