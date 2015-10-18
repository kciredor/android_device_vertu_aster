#!/bin/bash
BASE=../../../vendor/vertu/alexa/proprietary

for FILE in `cat proprietary-blobs.txt | grep -v ^# | grep -v ^$`; do
    DIR=`dirname $FILE`

    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi

    adb pull /system/$FILE $BASE/$FILE
done
