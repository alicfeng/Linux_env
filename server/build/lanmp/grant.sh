#!/bin/bash  
mysql -uroot -pfenglican <<EOF  
GRANT ALL PRIVILEGES ON *.* TO 'samego'@'%' IDENTIFIED BY 'samego' WITH GRANT OPTION;
FLUSH PRIVILEGES;
SELECT DISTINCT CONCAT('User: ''',user,'''@''',host,''';') AS query FROM mysql.user;
EOF
sudo sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/my.cnf
exit;  
