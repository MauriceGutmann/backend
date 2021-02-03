#!/bin/sh

export JAVA_HOME=/opt/jdk/sapmachine

export PATH=$JAVA_HOME/bin:$PATH

commerceVersion=$1

echo "current JAVA_HOME is: " $JAVA_HOME
echo "commerce version which should be installed: ${commerceVersion}"

./gradlew install -P hybrisVersion=${commerceVersion}
