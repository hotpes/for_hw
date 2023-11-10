#!/bin/bash

read -p "숫자를 입력하세요: " k
i=0

while [ $i -lt $k ]; do
    echo "Hello World!"
    i=$((i+1))
done

