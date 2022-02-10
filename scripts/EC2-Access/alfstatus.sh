#!/bin/bash
echo ACS is $(systemctl status alfresco-content| grep Active:)
echo ActiveMQ is $(systemctl status activemq| grep Active:)
echo AIO-TEngine is $(systemctl status alfresco-tengine-aio| grep Active:)
echo Search is $(systemctl status alfresco-search | grep Active:)
