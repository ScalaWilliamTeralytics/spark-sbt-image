FROM epahomov/docker-spark
ENV SBT_VERSION 0.13.13
RUN \
  apt-get update && \
  apt-get -y install python-pip jq npm
RUN \
  curl -L -o sbt-$SBT_VERSION.deb http://dl.bintray.com/sbt/debian/sbt-$SBT_VERSION.deb && \
  dpkg -i sbt-$SBT_VERSION.deb && \
  rm sbt-$SBT_VERSION.deb
