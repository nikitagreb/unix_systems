#!/bin/bash

for i in {2010..2017}
do
  for j in {01..12}
  do
    mkdir -p 'test/'$i'/'$j
    for f in {001..010}
    do
      echo $f > 'test/'$i'/'$j'/'$f'.txt'
    done
  done
done
