# Используем образ с Java 11
FROM openjdk:11

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем файлы Gradle внутрь контейнера
COPY build.gradle .
COPY settings.gradle .
COPY gradlew .

# Копируем исходный код
COPY src src/

# Собираем приложение
RUN ./gradlew build

# Указываем порт, который будет использоваться в приложении
EXPOSE 8099

# Команда для запуска приложения при старте контейнера
CMD ["java", "-jar", "build/libs/people-mock.jar"]