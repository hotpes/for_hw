#!/bin/bash

echo "식을 입력하세요(ex: 5 + 3) : "
read expression

IFS=' ' 
set -- $expression

n1="$1"
operator="$2"
n2="$3"

case "$operator" in
    '+')
        n3=$((n1 + n2))
        ;;
    '-')
        n3=$((n1 - n2))
        ;;
    *)
        echo "Invalid operator: $operator"
        exit 1
        ;;
esac

echo "Result: $n3"