
#http://dl.dropbox.com/u/14430458/backup-server/2012.06.17.13.40/m1.00.mov
# $1 -> folder name 2012.06.17.13.40
# $2 -> number of total files (9 forexample)


#GET THE LASTEST BACKUP FROM DROPBOX
wget http://dl.dropbox.com/u/14430458/backup-server/lastest_backup.txt
lastest_backup=$(less lastest_backup.txt)
rm lastest_backup.txt

if [ "$1" == "" ]; then
	lastest_backup="$lastest_backup"
else
	lastest_backup="$1"
fi

# MKDIR
BASEDIR="$(pwd)/$lastest_backup"
mkdir $BASEDIR
fn=""

#DOWNLOAD FILE FROM DROPBOX
for ((  i = 0 ;  i <= 9;  i++  ))
do
	cd $BASEDIR
	wget http://dl.dropbox.com/u/14430458/backup-server/$lastest_backup/m1.0$i.mov
	fn="$fn $BASEDIR/m1.0$i.mov"
done

#CONCAT FILE FROM DROPBOX
echo "Concating ..."
cd $BASEDIR
cat $fn > $BASEDIR/backup_file_$lastest_backup.tar.gz


echo "Removing mov files ..."
cd $BASEDIR
rm *.mov