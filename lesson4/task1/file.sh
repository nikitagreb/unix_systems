#!/bin/bash

if [ -n "$1" ]
then
  if [ -e $1 ]
  then
    cat $1 | tr '[:lower:]' '[:upper:]' | sed '/^$/d' > out.txt
    cat out.txt
    exit 0
  else
    echo 'Файл не найден'
    exit 2
  fi
else
  echo 'Необходимо указать файл'
  exit 1
fi

