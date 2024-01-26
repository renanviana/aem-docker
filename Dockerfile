FROM redhat/ubi8:8.9
WORKDIR /aem
RUN yum -y install java-11-openjdk
# need include your jar path
COPY ${PWD}/aem-author-p4502.jar /aem
ENTRYPOINT [ "java", "-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=0.0.0.0:5502", "-jar", "aem-author-p4502.jar"]
