#!/bin/bash

t="timeout 300"
output_folder="results3/tutor2base/"
count=0
stop=1001
for filename in tests/clean_AutoTutor/*; do
  echo $filename
  echo $output_folder${filename##*/}
  count=$((count+1))
  if [ "$count" -lt "$stop" ]; then
    $t java -jar target/regfixer.jar --mode 2 -base fix --file $filename > $output_folder${filename##*/}
  else
    continue
  fi
done
