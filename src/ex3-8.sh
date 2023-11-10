#!/bin/sh

# 사용법: ./update_db.sh 이름 전화번호 생일

if [ $# -ne 3 ]; then
  echo "사용법: $0 이름 전화번호 생일"
  exit 1
fi

name="$1"
phone="$2"
birthday="$3"

# db.txt 파일이 없으면 생성
if [ ! -e "db.txt" ]; then
  touch "db.txt"
fi

# 새로운 팀원 정보를 db.txt에 추가
echo "$name $phone $birthday" >> "db.txt"

echo "팀원 정보가 db.txt에 추가되었습니다."

