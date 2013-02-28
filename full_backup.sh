date_time="$(date +%Y).$(date +%m).$(date +%d).$(date +%H).$(date +%M)"

/home/scripts/./clean_before_backup.sh
echo 'Cleaning successfully!'

touch /Public/$date_time.log
file="/Public/backup-server/drupal7-server.$date_time.tar.gz"
tar -cvpzf $file --exclude=/proc --exclude=/Public --exclude=/proc --exclude=/lost+found --exclude=/sys --exclude=/mnt --exclude=/media --exclude=/tmp --exclude=/dev / >> /Public/$date_time.log
echo 'Compressing successfully!'

# echo 'Start Slipting files successfully!'
# mkdir /Public/backup-server/$date_time
# fs=$( stat -c %s $file)
# fs=$(($fs/9))
# split -b $fs -d  /Public/backup-server/drupal7-server.$date_time.tar.gz /Public/backup-server/$date_time/drupal7-server.
# rm /Public/backup-server/drupal7-server.$date_time.tar.gz
# echo 'Slipting files successfully!'
# 
# echo 'Starting upload file to dropbox'
# FILES=/Public/backup-server/$date_time/*
# for f in $FILES
# do
# 	/home/scripts/./dropbox_uploader.sh upload $f $f.mov  >> /Public/$date_time.log
# done
# 
# echo 'File uploaded to dropbox successfully'
# rm -r /Public/backup-server/$date_time
# echo 'tmp files deleted!'
# echo 'tmp files deleted!' >> /Public/$date_time.log
# 
# bzip2 /Public/$date_time.log
# /home/scripts/./dropbox_uploader.sh upload /Public/$date_time.log.bz2 /Public/backup-server/$date_time/log.bz2
# rm /Public/$date_time.log.bz2
# 
# echo $date_time > /Public/backup-server/lastest_backup.txt
# /home/scripts/./dropbox_uploader.sh upload /Public/backup-server/lastest_backup.txt /Public/backup-server/lastest_backup.txt
# rm /Public/backup-server/lastest_backup.txt