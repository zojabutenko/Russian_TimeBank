#!/bin/bash

LENTA_FILES='./raw/*'
for f in $LENTA_FILES
do
  # take action on each file. $f store current file name
  echo "Processing $f file..."
  # get filename without extension:
  new_name="${f%.*}"
  # get document creation time form filename:
  dct=$(echo $f | cut -c 68-75)
  echo $dct
  # get properly formatted document creation time:
  dct_formatted=$(echo "${dct:0:4}"-"${dct:4:2}"-"${dct:6}")
  res_path="./processed_heideltime/"
  extension=".xml"
  final_path=$(echo "${new_name:63}"$extension)
  # process the file with HeidelTime:
  java -jar de.unihd.dbs.heideltime.standalone.jar $f -dct $dct_formatted -l RUSSIAN -t NEWS -pos TREETAGGER > "$res_path$final_path"
done

