#!/bin/bash

#taki replacement dla zwyklego git add
sed -i 's/ *$//' $1 | git add "$1"
