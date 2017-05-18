npm install -g pm2-zabbix
curl https://raw.githubusercontent.com/sukaslayer/pm2-zabbix/master/install/init/sysv/pm2-zabbix-defaults > /etc/default/pm2-zabbix
curl https://raw.githubusercontent.com/sukaslayer/pm2-zabbix/master/install/init/sysv/pm2-zabbix > /etc/init.d/pm2-zabbix
chmod +x /etc/init.d/pm2-zabbix
chkconfig pm2-zabbix on
service pm2-zabbix start
curl https://raw.githubusercontent.com/sukaslayer/pm2-zabbix/master/install/zabbix-agent/pm2-zabbix-sudoers > /etc/sudoers.d/pm2-zabbix-sudoers
curl https://raw.githubusercontent.com/sukaslayer/pm2-zabbix/master/install/zabbix-agent/pm2-zabbix.conf > /etc/zabbix/zabbix-agentd.d/pm2-zabbix.conf
service zabbix-agent restart
