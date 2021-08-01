#!/bin/sh
find /test -mtime +1 | while read old
do
cp -pr $old /home/vijay     --> for coping at bucket (aws s3 cp $old s3://<bucket_name>/)
if [ $? -eq 0 ]; then
rm -rf $old
fi
done
