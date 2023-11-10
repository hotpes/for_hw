#!/bin/sh

# 사용법: ./create_files.sh 폴더이름

if [ $# -eq 0 ]; then
  echo "사용법: $0 폴더이름"
  exit 1
fi

folder_name="$1"

# 폴더 생성 및 이동
mkdir "$folder_name"
cd "$folder_name" || exit

# 파일 생성 및 링크
for i in 1 2 3 4 5; do
  file_name="${folder_name}_${i}.txt"
  touch "$file_name"
done

# 하위 폴더 생성 및 파일 링크
for i in 1 2 3 4 5; do
  subfolder_name="${folder_name}_sub${i}"
  mkdir "$subfolder_name"
  ln -s "../${folder_name}_${i}.txt" "${subfolder_name}/${folder_name}_sub${i}.txt"
done

echo "폴더와 파일 생성이 완료되었습니다."

