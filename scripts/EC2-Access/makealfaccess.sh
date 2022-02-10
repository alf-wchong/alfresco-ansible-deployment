#!/bin/bash
clear&&date
groupadd -g 2001 alfadmin
groupadd -g 2002 kahuna
groupadd -g 2003 alfresco
groupadd -g 2004 efs
useradd -g alfadmin -G kahuna,efs -u 2001 alfadmin
useradd -g alfresco -G kahuna,efs -u 2003 alfresco
cp /tmp/usercpkey.sh /home/alfadmin/.
chown alfadmin:alfadmin '/home/alfadmin/usercpkey.sh'
sed -i '/## Same thing without a password/a %kahuna\tALL=(ALL)\tNOPASSWD: ALL' /etc/sudoers
su -c '/home/alfadmin/usercpkey.sh' alfadmin
cp -R /efs/deployment_stuff/ansible_artefacts /tmp/.
chown -R alfresco:efs /tmp/ansible_artefacts
#ln -s /efs/alfresco-content /var/opt/alfresco/content-services/content-efs
date
