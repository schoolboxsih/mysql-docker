docker network create schoolbox-network
docker run --name mysql-sb --net=schoolbox-network -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password -d schoolboxsih/mysql-schoolbox:latest
