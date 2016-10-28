FROM docker.io/openshift/base-centos7


MAINTAINER MBAH Johnas fortem751@gmail.com

yum -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel && \
yum clean all && \
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.111-1.b15.el7_2.x86_64 && \
export PATH=$PATH:$JAVA_HOME/bin && \
export CLASSPATH=.:$JAVA_HOME/jre/lib:$JAVA_HOME/lib:$JAVA_HOME/lib/tools.jar && \

yes "" | alternatives --config java 

USER 1001
