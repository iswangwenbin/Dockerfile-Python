# dockerfile


#### zookeeper

````
docker run --name my_zookeeper -p 2181:2181 -p 2888:2888  -p 3888:3888 --restart always -d zookeeper
````

#### redis

````
docker run --name my_redis -p 6379:6379 -d redis
````

#### mysql

````
docker run --name mysql -v ~/docker/mysql:/var/lib/mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -d mysql:5.7
````
