mkdir /home/quang/public_html/$1
sudo sh -c 'echo "<VirtualHost *:80>" >> /etc/apache2/sites-available/$1'
sudo sh -c 'echo "   DocumentRoot /home/quang/public_html/$1" >> /etc/apache2/sites-available/$1'
sudo sh -c 'echo "   ServerName $1" >> /etc/apache2/sites-available/$1'
sudo sh -c 'echo "   ErrorLog /home/quang/public_html/$1/logs/error.log" >> /etc/apache2/sites-available/$1'
sudo sh -c 'echo "   CustomLog /home/quang/public_html/$1/logs/access.log combined" >> /etc/apache2/sites-available/$1'
sudo sh -c 'echo "</VirtualHost>" >> /etc/apache2/sites-available/$1'

a2dissite $1 && a2ensite $1 && service apache2 reload
