echo "199.232.96.133 raw.githubusercontent.com" >> /etc/hosts
##使用自定义shell下载并配置中青看点极速版
wget -O /scripts/youth.js https://raw.githubusercontent.com/Sunert/Scripts/master/Task/youth.js
echo -e >> /scripts/docker/merged_list_file.sh
echo "11 8 * * * node /scripts/youth.js |ts >> /scripts/logs/youth.log 2>&1" >> /scripts/docker/merged_list_file.sh

##使用自定义shell下载并配置中青看点自动阅读
wget -O /scripts/Youth_Read.js https://raw.githubusercontent.com/Sunert/Scripts/master/Task/Youth_Read.js
echo -e >> /scripts/docker/merged_list_file.sh
echo "15 */2 * * * node /scripts/Youth_Read.js |ts >> /scripts/logs/Youth_Read.log 2>&1" >> /scripts/docker/merged_list_file.sh

##使用自定义shell下载并配置中青看点浏览赚
wget -O /scripts/youth_gain.js https://raw.githubusercontent.com/Sunert/Scripts/master/Task/youth_gain.js
echo -e >> /scripts/docker/merged_list_file.sh
echo "5 10 * * * node /scripts/youth_gain.js |ts >> /scripts/logs/youth_gain.log 2>&1" >> /scripts/docker/merged_list_file.sh
