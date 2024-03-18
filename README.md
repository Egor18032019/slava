* Запустить проект

```shell
java -jar threeServerOnJava.jar
```

```shell
java -jar threeServerOnJava.jar -l catalog.json -p catalog.json -n catalog.json 
java -jar threeServerOnJava.jar -p catalog.json -n catalog.json 
java -jar threeServerOnJava.jar -n catalog.json 
``` 

* Запустить проект в докер образе.

```shell
docker-compose up
```

Проверить работоспособность
```shell
curl -I -X GET localhost:8080
```
 