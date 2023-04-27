FROM golang:1.20


# Configura directorio de trabajo
WORKDIR /app

# Clona repositorio de GitHub
RUN git clone https://github.com/PabloAlarcon1/SoftServeDemo.git


RUN mv /app/SoftServeDemo/App_demo1/* /app

RUN go mod download

# Copia archivos de la aplicacion al contenedor
COPY . .

# Compila aplicación y crea ejecutable
RUN go build -o /usr/local/bin/app ./...

# Expone puertp
EXPOSE 8082

# Ejecuta archivo app al iniciar contenedor
CMD ["app"]
