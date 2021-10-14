##########################################################################
# File Name: cronTash.sh
# Author: islander-007
# mail: ....@gmail.com
# Created Time: 四 10/14 15:45:09 2021
#########################################################################
# 直接写脚本
crontab -l > conf && echo "*/1 * * * * /home/xxxx/test/test.sh" >> conf && crontab conf && rm -f conf
