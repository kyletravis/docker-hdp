docker save node | pigz > images/node.tar.gz
docker save ambari-server | pigz > ambari-server.tar.gz
docker save pgsql | pigz > pgsql.tar.gz
