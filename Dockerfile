FROM docker.io/openshift/base-centos7


MAINTAINER MBAH Johnas fortem751@gmail.com
RUN \
yum -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel && \
yum clean all && \

yes "" | alternatives --config java

RUN chown 1001:1001 /usr/lib

USER 1001


ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.111-1.b15.el7_2.x86_64 
ENV PATH=$PATH:$JAVA_HOME/bin 
ENV CLASSPATH=.:$JAVA_HOME/jre/lib:$JAVA_HOME/lib:$JAVA_HOME/lib/tools.jar




