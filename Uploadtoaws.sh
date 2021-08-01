#!/bin/bash
CUR_DATE=`date +%Y%m%d`
for FILE in /root/test2/*; do  --> Location can be given 
    filename=$FILE
    old_date=${filename#*_}
    if [[ "$CUR_DATE" -le "$old_date" ]];then
   echo "File $FILE file date is current or higher"
    else
   echo "File $FILE is going to be deleted as file date is less than today's date" 
  ##### aws s3 cp $FILE s3://<bucket_name>/  --> we can use this command to upload a file on aws s3 before deleting locally.
   rm -rf "$FILE"
    fi
done
