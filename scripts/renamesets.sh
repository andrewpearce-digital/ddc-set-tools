#! /bin/bash

find . -iname 'SET.xml' | while read fn; do name=$(basename "$fn") ; dir=$(dirname "$fn") ; mv "$fn" "$dir/$(basename "$dir")-$name" ;done