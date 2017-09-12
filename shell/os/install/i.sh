#!/bin/bash
log_name=`date +%Y%m%dT%H%M%S`

touch /home/alic/data/log/$log_name

sudo apt-get install $1 $2 $3 $4 $5 $6 $7 $8 2>&1 | tee /home/alic/data/log/$log_name

echo -e "$log_name \t $1 \t $2 \t $3 \t $4 \t $5 \t $6 \t $7 \t $8 \n" >> /home/alic/data/log/install.list

cat /home/alic/data/log/$log_name >> /home/alic/data/log/install.log
