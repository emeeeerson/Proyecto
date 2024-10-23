# Usa una imagen base de Java
FROM openjdk:17-jdk-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR desde tu sistema al contenedor
COPY target/seguimiento-gastos-0.0.1-SNAPSHOT.jar /app/seguimiento-gastos.jar

# Expone el puerto 8080 para acceder a la aplicación
EXPOSE 8080

# Comando para ejecutar tu aplicación Spring Boot
ENTRYPOINT ["java", "-jar", "/app/seguimiento-gastos.jar"]
