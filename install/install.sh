npm install -g pm2-zabbix
curl https://raw.githubusercontent.com/sukaslayer/pm2-zabbix/master/install/init/systemd/pm2-zabbix.service > /etc/systemd/system/pm2-zabbix.service
chkconfig pm2-zabbix on
service pm2-zabbix start
curl https://raw.githubusercontent.com/sukaslayer/pm2-zabbix/master/install/zabbix-agent/pm2-zabbix-sudoers > /etc/sudoers.d/pm2-zabbix-sudoers
curl https://raw.githubusercontent.com/sukaslayer/pm2-zabbix/master/install/zabbix-agent/pm2-zabbix.conf > /etc/zabbix/zabbix_agentd.d/pm2-zabbix.conf
service zabbix-agent restart
