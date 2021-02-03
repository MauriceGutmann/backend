#!/bin/sh

commerceVersion=$1

cd /opt/commerce/vanillacommerce
./gradlew install -P hybrisVersion=${commerceVersion}
