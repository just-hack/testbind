#!/bin/sh

KEYTOOL="/usr/lib/jvm/java-1.8-openjdk/bin/keytool"
JARSIGNER="/usr/lib/jvm/java-1.8-openjdk/bin/jarsigner"

if [ ! -f $HOME/ash.keystore ]; then
    $KEYTOOL -noprompt -dname "CN=mqttserver.ibm.com, OU=ID, O=IBM, L=Hursley, S=Hants, C=GB" -storepass Ashish -genkey -v -keystore $HOME/ash.keystore -alias Ashish -keyalg RSA -validity 10000 -keypass Ashish
fi

exec $JARSIGNER "$@"
