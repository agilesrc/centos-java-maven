FROM agilesrc/centos-java:latest

MAINTAINER "AgileSrc LLC" <support@agilesrc.com>

ENV MAVEN_VERSION 3.3.9

RUN yum update -y
RUN yum clean all

RUN curl http://www.us.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz > /usr/share/maven.tar.gz && \
    cd /usr/share && \
    tar xvzf maven.tar.gz && \
    rm -f maven.tar.gz
    
# Set environment variables.
ENV PATH=$PATH:/usr/share/apache-maven-${MAVEN_VERSION}/bin
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
