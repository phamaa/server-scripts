cd /home/quang/public_html
mkdir $1
chown www-data:quang -R $1
chmod 755 -R $1
touch $1.vhost

echo "<VirtualHost *:80>" >> $1.vhost
echo "   DocumentRoot /home/quang/public_html/$1" >> $1.vhost
echo "   ServerName $1" >> $1.vhost
echo "   ErrorLog /home/quang/public_html/$1/logs/error.log" >> $1.vhost
echo "   CustomLog /home/quang/public_html/$1/logs/access.log combined" >> $1.vhost
echo "</VirtualHost>" >> $1.vhost

sudo mv $1.vhost /etc/apache2/sites-available/$1
a2dissite $1 && a2ensite $1 && service apache2 reload

cd /home/quang/public_html/Â/$1
