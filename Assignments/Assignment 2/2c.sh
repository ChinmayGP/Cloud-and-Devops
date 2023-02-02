# !/bin/sh
# Author : Chinmay Pohankar
# Date : Jan 29, 2023

df -Ph | grep -vE '/Filesystem|tmpfs|cdrom' | awk '{ print $5,$1 }' |
while read output;
do
echo $output
used=$(echo $output | awk '{print $1}' | sed s/%//g)
partition=$(echo $output | awk '{print $2}')
done

# 0 8 * * * sudo ./2c.sh > /dev/null 2>&1

