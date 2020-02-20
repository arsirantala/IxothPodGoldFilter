#!/bin/bash

TEXT=$1

if [ -z ${TEXT} ] ;then
    echo Argument is mandatory
else
    if which sed >/dev/null; then
        sed -i '67s/) \SOCK<2/ OR '$TEXT') \SOCK<2/' item.filter
    else
        echo gsed program was not found
    fi
fi
