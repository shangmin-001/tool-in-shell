##########################################################################
# File Name: startChfs.sh
# Author: islandor-007
# mail: 
# Created Time: 二  4/20 16:31:55 2021
#########################################################################
#!/bin/bash 

logDir="log"
shareDir="share"

if [ ! -d "$logDir" ];then 
	mkdir "$logDir"
fi

if [ ! -d "$shareDir" ];then
	mkdir "$shareDir"
fi

./chfs --path="./share/" --port=8888 --log="$logDir" &

