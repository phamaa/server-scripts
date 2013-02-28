cd /backup/scripts
./clean_before_backup.sh
echo 'Cleaning successfully!'

file="/backup/incremental/general_server_full_backup.$(date +%Y).$(date +%m).$(date +%d).tar.gz"
tar --create --preserve-permissions --gzip --file=$file --listed-incremental=/backup/incremental/backup.snar --exclude=/var/cache/apt/* --exclude=/backup/full/* --exclude=/backup/incremental/* --exclude=/proc --exclude=/lost+found --exclude=/sys --exclude=/mnt --exclude=/media --exclude=/tmp --exclude=/dev /

echo 'Backup successfully!'