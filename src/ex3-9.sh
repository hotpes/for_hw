#!/bin/sh

# 사용법: ./search_db.sh 이름

if [ $# -ne 1 ]; then
  echo "사용법: $0 이름"
  exit 1
fi

name_to_search="$1"

# db.txt 파일이 없으면 메시지 출력 후 종료
if [ ! -e "db.txt" ]; then
  echo "데이터베이스 파일(db.txt)이 존재하지 않습니다."
  exit 1
fi

# 이름으로 검색하여 정보 출력
result=$(grep "^$name_to_search " "db.txt")

if [ -n "$result" ]; then
  echo "$result"
else
  echo "일치하는 정보가 없습니다."
fi

