source_dir="/Users/mkojro/Sync"
backup_dir="/Volumes/mk-disk-work/backup"
snapshot_dir=$backup_dir/snapshots/$(date +%F-%H%M%S)

echo "-- Copying files"
rsync -via --delete $source_dir $backup_dir/latest/

echo "-- Creating a snapshot"
mkdir -p $snapshot_dir
cp -val $backup_dir/latest/ $snapshot_dir

echo "-- Done"
