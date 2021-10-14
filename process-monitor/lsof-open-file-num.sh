##########################################################################
# File Name: lsof-open-file-num.sh
# Author: islander-007
# mail: ....@gmail.com
# Created Time: 四 10/14 16:20:29 2021
#########################################################################
#!/bin/bash
DIR="$( cd "$( dirname "$0"  )" && pwd  )"
file="$DIR/123.txt"
pid=`ps -ef|grep proname|grep -v grep|awk '{print $2}'`
if [ "$pid"X = ""X ];then
   echo "logkit-pro not exist" >>  "$file"
   exit
fi
cmd="lsof -p $pid|wc -l"
num_of_files=`eval $cmd`
echo " DATE:" $(date +"%Y-%m-%d %H:%M:%S") "open: ""$num_of_files" >> "$file"
