#!/bin/sh

set -eu

$target=$1
$output=$2

go build -o $output -v $target 