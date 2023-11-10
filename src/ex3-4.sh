#!/bin/sh

echo "리눅스가 재미있나요?(yes or no)"
read ans

if [ "$ans" = "yes" ]; then
    echo "좋아요!"
elif [ "$ans" = "no" ]; then
    echo "알겠어요."
else
    echo "yes 또는 no로 대답해주세요."
fi
