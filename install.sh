#!/bin/sh

export JAVA_HOME=/opt/jdk/sapmachine
export PATH=$JAVA_HOME/bin:$PATH

commerceVersion=$1

echo "current JAVA_HOME is: " $JAVA_HOME
echo "commerce version which should be installed: ${commerceVersion}"

echo "stopping hybris server"
./hybrisserver.sh stop

sleep 10

echo "starting installation and initialization"
./gradlew install -P hybrisVersion=${commerceVersion}

echo "starting hybris server"
./hybrisserver.sh start
