#!/bin/bash

# Выводим сообщение о начале сборки
echo "Starting Gradle build..."

# Запускаем сборку проекта с помощью Gradle
./gradlew build

# Проверяем код завершения Gradle
if [ $? -eq 0 ]; then
  echo "Gradle build succeeded."
else
  echo "Gradle build failed."
fi