#!/bin/bash

TEXT=$1

if [ -z ${TEXT} ] ;then
    echo Argument is mandatory
else
    if which sed >/dev/null; then
        sed -i '58s/SOCK=0/!'$TEXT' \SOCK=0/' item.filter
        sed -i '59s/SOCK>0/!'$TEXT' \SOCK>0/' item.filter
        sed -i '75s/) \SOCK<2/ OR '$TEXT') \SOCK<2/' item.filter
        sed -i '76s/) \SOCK=0/ OR '$TEXT') \SOCK=0/' item.filter
    else
        echo gsed program was not found
    fi
fi
