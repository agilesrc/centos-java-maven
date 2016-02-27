FROM agilesrc/centos-java:6-8

MAINTAINER "AgileSrc LLC" <support@agilesrc.com>

ENV MAVEN_VERSION 2.2.1

RUN yum update -y
RUN yum clean all

RUN curl http://archive.apache.org/dist/maven/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz > /usr/share/maven.tar.gz && \
    cd /usr/share && \
    tar xvzf maven.tar.gz && \
    rm -f maven.tar.gz
    
# Set environment variables.
ENV PATH=$PATH:/usr/share/apache-maven-2.2.1/bin
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
