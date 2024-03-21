* Запустить проект
```shell
java -jar threeServerOnJava.jar
java -jar threeServerOnJava.jar -n catalog.json 
java -jar threeServerOnJava.jar -p catalog.json -n catalog.json 
java -jar threeServerOnJava.jar -l catalog.json -p catalog.json -n catalog.json 
``` 

* Запустить проект в докер образе.
```shell
docker-compose up
```

Проверить работоспособность
```shell
curl -I -X GET localhost:8080
```
 
тестирование
```shell
wrk -t1 -c10 -d10s http://127.0.0.1:8080/
```
# This runs a benchmark for 30 seconds, using 2 threads, keeping 50 HTTP connections open,
# and a constant throughput of 2000 requests per second (total, across all connections combined).
# wrk -t2 -c50 -d30s -R2000 -f urls-rasla.txt
```shell
wrk -t2 -c10 -d60s http://127.0.0.1:8080/
```
```shell
siege -i -c10 -t10s http://127.0.0.1:8080/
```
```shell
siege -i -c10 -t10s http://127.0.0.1:8080/catalog.php
```
