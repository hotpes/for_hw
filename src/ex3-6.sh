#!/bin/sh

# 사용자로부터 폴더 이름을 입력 받음
echo "폴더 이름을 입력하세요:"
read folder_name

# 폴더가 존재하는지 확인하고 없다면 생성
if [ ! -d "$folder_name" ]; then
  mkdir "$folder_name"
  echo "폴더 '$folder_name'가 생성되었습니다."
  # 5개의 파일 생성
for i in $(seq 1 5); do
  touch "$folder_name/file$i.txt"
  echo "파일 '$folder_name/file$i.txt'가 생성되었습니다."
done

# 폴더를 압축
zip -r "$folder_name.zip" "$folder_name"

# 새로운 폴더 생성하여 압축 해제
extract_folder="extracted_$folder_name"
mkdir "$extract_folder"
unzip "$folder_name.zip" -d "$extract_folder"

echo "압축이 해제되어 '$extract_folder' 폴더가 생성되었습니다."

else
  echo "폴더 '$folder_name'는 이미 존재합니다."
fi


