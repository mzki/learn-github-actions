#!/bin/bash

set -eu

target=$1
output=$2
os=${3:-linux}
echo $(ls .)
echo $(pwd)
go get -d -v ./...
if [ $os = "linux" ]; then
  GOOS=linux go build -o $output -v $target 
fi
if [ $os = "windows" ]; then
  GOOS=windows go build -o $output -v $target 
fi
