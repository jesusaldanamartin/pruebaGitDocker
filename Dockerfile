FROM amazoncorretto:21 as build

WORKDIR /pruebaGitDcoker/

COPY ./Main.java .

RUN javac ./Main.java

FROM  amazoncorretto:21 as execute

WORKDIR /Prueba Git/

COPY --from=build /pruebaGitDocker/Main.class 

CMD ["java", "Main"]


# sudo docker build -t java_test_1:latest .
# sudo docker run -d prueba_java java_test_1:latest
# sudo docker cp 6a7e5d77aeb6:/docker/Main.class ./Main.class -> Copiamos el binario creado
# sudo docker run -i -t -v ./volumen:/docker java_test_1:latest /bin/bash
