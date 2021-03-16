#!/usr/bin/bash

source settings.sh

## see if we can create directory
mkdir -p $TARGET
if [ $? -ne 0 ] ; then
    echo "Failed to write in target directory."
    exit
fi

wget $ANACONDA -O $TMP/anaconda.sh
if [ $? -ne 0 ] ; then
    echo "Failed to download anaconda."
    exit
fi

rm -r $TARGET
/usr/bin/bash $TMP/anaconda.sh -b -p $TARGET
if [ $? -ne 0 ] ; then
    echo "Failed to install anaconda."
    exit
fi

