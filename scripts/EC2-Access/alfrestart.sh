#!/bin/bash
clear&&date
echo Stopping.....
/home/alfresco/alfstop.sh
date&&echo Clearing logs....
pushd /var/log/alfresco&&mv activemq.log alfresco.log ats-ate-aio.log catalina.out share.log solr.log archived/.
popd
date&&echo Starting .....
/home/alfresco/alfstart.sh
date&&echo Tailing catalina.out
echo =======================================================
tail -f /var/log/alfresco/catalina.out
