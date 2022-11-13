#!/bin/sh

set -eu

$target=$1
$output=$2
echo $(ls .)
echo $(pwd)
go build -o $output -v $target 