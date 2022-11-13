#!/bin/bash

set -eu

target=$1
output=$2
echo $(ls .)
echo $(pwd)
go get -d -v ./...
go build -o $output -v $target 