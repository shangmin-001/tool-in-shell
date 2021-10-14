进程的许多信息,需要实时监控,方便定位问题.

1. 文件打开的文件句柄数
    `lsof -p pid |wc -l`
    如果文件句柄数打开超过系统限制,那么会报"too many open files"
