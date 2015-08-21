#!/bin/bash

if [ -d /var/lib/jboss/server/all/deploy/ROOT.war/old ]
 then
        echo "Directory old exist"
 else
        mkdir -p /var/lib/jboss/server/all/deploy/ROOT.war/old
fi

if [ -d /var/lib/jboss/server/all/deploy/ROOT.war/dist ]
 then
        echo "Directory dist exist"
else
        mkdir -p /var/lib/jboss/server/all/deploy/ROOT.war/dist

fi

if [ -d /var/lib/jboss/server/all/deploy/ROOT.war/current ]     
 then 
        echo "Directory current exist"
        mv /var/lib/jboss/server/all/deploy/ROOT.war/current/*.tar.gz /var/lib/jboss/server/all/deploy/ROOT.war/old/
	mv /tmp/jboss*.tar.gz /var/lib/jboss/server/all/deploy/ROOT.war/current/
	cd /var/lib/jboss/server/all/deploy/ROOT.war/current/
	tar xzf *.tar.gz -C /var/lib/jboss/server/all/deploy/ROOT.war/dist
 else
        mkdir -p /var/lib/jboss/server/all/deploy/ROOT.war/current
        mv /tmp/jboss*.tar.gz /var/lib/jboss/server/all/deploy/ROOT.war/current/
	cd /var/lib/jboss/server/all/deploy/ROOT.war/current/
        tar xzf *.tar.gz -C /var/lib/jboss/server/all/deploy/ROOT.war/dist
fi

