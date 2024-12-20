* Запустить проект
```shell
java -jar catalog/threeServerOnJava.jar
 
``` 

* Запустить проект в докер образе.
```shell
docker-compose up
```

Проверить работоспособность
```shell
curl -i -X GET 'http://localhost:8080?a=2&b=3'
```
```shell
curl -i -X GET 'http://localhost:8080?a=2&b=23&c=121111'
```

тестирование
```shell
wrk -t1 -c10 -d10s 'http://localhost:8080?a=2&b=3'
```
# This runs a benchmark for 30 seconds, using 2 threads, keeping 50 HTTP connections open,
# and a constant throughput of 2000 requests per second (total, across all connections combined).
# wrk -t2 -c50 -d30s -R2000 -f urls-rasla.txt
```shell
wrk -t2 -c10 -d60s 'http://localhost:8080?a=2&b=3'
```
```shell
siege -i -c10 -t10s 'http://localhost:8080?a=2&b=3'
```
```shell
siege -i -c10 -t10s 'http://localhost:8080?a=2&b=3'
```
