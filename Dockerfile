# Используйте официальный образ Golang в качестве базового образа
FROM golang:1.21.5

# Установите рабочую директорию внутри контейнера
WORKDIR /app

# Скопируйте содержимое текущего каталога внутрь контейнера
COPY . .

# Соберите Go-приложение
RUN go build -o main .

# Запустите приложение при запуске контейнера
CMD ["./main"]
