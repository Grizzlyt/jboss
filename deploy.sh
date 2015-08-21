#!/bin/bash

if [ -d /tmp/project/dist ]
 then 
	echo "Directory dist exist"
 else
        mkdir -p /tmp/project/dist  
fi

if [ -d /tmp/project/current ]     
 then 
        echo "Directory current exist"
 else
        mkdir -p /tmp/project/current
fi

if [ -d /tmp/project/old ]     
 then 
        echo "Directory old exist"
 else
        mkdir -p /tmp/project/old
fi
