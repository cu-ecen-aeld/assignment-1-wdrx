#!/usr/bin/sh

if [ $# -lt 2 ]
then
  echo "Usage: $0 <writefile> <writestr>"
  exit 1
fi

writefile=$1
writestr=$2

writepath=$(dirname "$writefile")
if [ ! -d "$writepath" ]
then
    mkdir -p "$writepath"
fi

touch $writefile
if [ ! -w "$writefile" ]
then
  echo "Error: $writefile is not writable"
  exit 1
fi

echo "$writestr" > "$writefile"
