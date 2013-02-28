curl http://ipecho.net/plain -o /tmp/internet_ip.info
ifconfig > /tmp/local_ip.info

/home/quang/scripts/dropbox_uploader.sh upload /tmp/internet_ip.info /tmp/internet_ip.info
/home/quang/scripts/dropbox_uploader.sh upload /tmp/local_ip.info /tmp/local_ip.info
