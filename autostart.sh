#!/bin/bash
sudo mkdir /etc/vtiger/
sudo touch /etc/vtiger/start.sh
sudo echo -e "#!/bin/bash \ncd ~/Documents/ldsolutions/\nsudo docker-compose up -d" >> /etc/vtiger/start.sh


sudo touch /etc/systemd/system/vtiger.service
sudo echo -e "[Unit]\nDescription=Reboot message systemd service.\n\n
[Service]\n
Type=simple\n
ExecStart=./etc/vtiger/start.sh\n\n
[Install]\n
WantedBy=multi-user.target" >> /etc/systemd/system/vtiger.service

sudo chmod 664 /etc/systemd/system/vtiger.service
sudo systemctl enable vtiger.service