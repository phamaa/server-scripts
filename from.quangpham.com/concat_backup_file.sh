echo 'quang'
FILES=/Users/quang.pham/Dropbox/Public/backup-server/2012.06.16/*
fn=""
for f in $FILES
do
	fn="$fn $f"
done

cat $fn > test.tar.gz