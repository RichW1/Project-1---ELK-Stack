#!/bin/bash

cat $1 |awk -F" " '{print $1, $2, $5, $6}' |grep -i $2
