FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
# создаем директорию app в новом слое образа.
COPY catalog/threeServerOnJava.jar ./threeServerOnJava.jar
#- копируем  наш jar-ник в папку app.
COPY catalog.json ./catalog.json
#- копируем  наш jjson в папку app.

#RUN addgroup --system javauser && adduser -S -s /bin/false -G javauser javauser
#RUN chown -R javauser:javauser /app
#USER javauser
EXPOSE 8080
# - отмечаем на каком порту желательно что бы работал наш контейнер
CMD ["java", "-jar", "threeServerOnJava.jar", " -n catalog.json"]
#- запускаем наше приложение в контейнере.
