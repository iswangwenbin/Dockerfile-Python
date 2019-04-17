# dockerfile


#### zookeeper

````
docker run --name my_zookeeper -p 2181:2181 -p 2888:2888  -p 3888:3888 --restart always -d zookeeper
````

#### redis

````
docker run --name my_redis -p 6379:6379 -d redis
````
