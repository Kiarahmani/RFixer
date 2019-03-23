#!/bin/bash

t="timeout 360"
output_folder="results/mode1max/"
for filename in tests/benchmark_explicit/*; do
  echo $filename
  echo $output_folder${filename##*/}
  $t java -jar target/regfixer.jar --mode 1 -max fix --file $filename > $output_folder${filename##*/}
done
