rm /var/log/*.gz
rm /var/log/dbconfig-common/*.gz
rm /var/log/dist-upgrade/*.gz
rm /var/log/apache2/*.gz
rm /var/log/apt/*.gz
rm /var/log/landscape/*.gz
rm /var/log/mysql/*.gz
rm /var/log/upstart/*.gz
rm /var/log/fsck/*.gz
rm /var/log/installer/*.gz
rm /var/log/news/*.gz
rm /var/log/redmine/*.gz
rm -r /tmp/*

apt-get clean
apt-get autoclean
apt-get autoremove
