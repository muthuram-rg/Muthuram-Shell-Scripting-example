#!/bin/bash
#
#
#
######################
#Author: Muthuram
#Date: 14-09-2024
#
#This script will show the status of the node
#
#Version: V1
#
######################

set -x #debug mode which shows the commands exectued in this script
set -e #Exits the scripts when there is an error
set -o pipefail

df -hT

free -h

nproc

ps -ef | grep amazon | awk -F" " '{print $2}'
