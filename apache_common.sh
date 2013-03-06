#Server name
sudo sh -c 'echo "ServerName localhost" >> /etc/apache2/conf.d/name'

#enable dump_io
sudo a2enmod dump_io
sudo sh -c 'echo "#" >> /etc/apache2/apache2.conf'
sudo sh -c 'echo "# Quang" >> /etc/apache2/apache2.conf'
sudo sh -c 'echo "# enable this if you just want to capture http request" >> /etc/apache2/apache2.conf'
sudo sh -c 'echo "DumpIOInput On" >> /etc/apache2/apache2.conf'
sudo sh -c 'echo "# enable this if you just want to capture http response" >> /etc/apache2/apache2.conf'
sudo sh -c 'echo "DumpIOOutput On" >> /etc/apache2/apache2.conf'
sudo sh -c 'echo "# capture everything" >> /etc/apache2/apache2.conf'
sudo sh -c 'echo "DumpIOLogLevel debug" >> /etc/apache2/apache2.conf'


#enable rewrite
sudo a2enmod rewrite

#install uploadprogress
sudo pecl install uploadprogress
sudo sh -c 'echo "#" >> /etc/php5/apache2/php.ini'
sudo sh -c 'echo "# Quang install uploadprogress" >> /etc/php5/apache2/php.ini'
sudo sh -c 'echo "extension=uploadprogress.so" >> /etc/php5/apache2/php.ini'