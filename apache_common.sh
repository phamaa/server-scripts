#Server name
sudo sh -c 'echo "ServerName localhost" >> /etc/apache2/conf.d/name'

#enable dump_io
sudo a2enmod dump_io
sudo sh -c 'echo "DumpIOInput On" >> /etc/apache2/apache2.conf'
sudo sh -c 'echo "DumpIOOutput On" >> /etc/apache2/apache2.conf'
sudo sh -c 'echo "DumpIOLogLevel debug" >> /etc/apache2/apache2.conf'
