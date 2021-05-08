##########################################################################
# File Name: startLogkit.sh
# Author: islander-007
# mail: ....@gmail.com
# Created Time: 六  5/ 8 10:09:50 2021
##########################################################################
#!  /bin/sh
curPath=`pwd`
cd /Users/shangmin/go/src/qiniu.com/logkit-enterprise/cmd/logkit-pro
go build -o logkit-pro main.go  

if [ $? != 0 ];then
	echo "fail to build logkit"
	exit
fi
ps -ef|grep logkit-pro|grep -v grep|awk '{print $2}'|xargs kill -9 


cp logkit-pro "$curPath"
cd "$curPath"
chmod 777 logkit-pro 
./logkit-pro -f logkit.conf
