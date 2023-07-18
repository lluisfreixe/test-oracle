FROM eclipse-temurin:8-jdk-focal
RUN echo "==================================================================="
RUN echo " Entorn DGP "
RUN echo " URL de connexio a Oracle "
RUN echo " spring.datasource.url = jdbc:oracle:thin:@10.46.249.33:1521:OPENC "
RUN echo "==================================================================="
# RUN export HTTP_PROXY=http://proxypass.intranet.gencat.cat:8080
# RUN export HTTPS_PROXY=http://proxypass.intranet.gencat.cat:8080
# RUN export NO_PROXY=api.admlocplpre.interior.intranet.gencat.cat:6443
ENV TZ=Europe/Madrid
ADD target/test-oracle-1.0.jar test-oracle-1.0.jar
ENTRYPOINT ["java", "-jar", "test-oracle-1.0.jar"]

