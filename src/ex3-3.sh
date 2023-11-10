#!/bin/sh

# 사용자로부터 키와 몸무게를 입력받기
echo "키와 몸무게를 입력하세요 (예: 170 70): "
read exp

# 입력 문자열을 공백을 기준으로 분리하여 변수에 할당
height=$(echo "$exp" | cut -d' ' -f1)
weight=$(echo "$exp" | cut -d' ' -f2)

# BMI 계산
bmi=$(echo "scale=2; $weight / (($height / 100) * ($height / 100))" | bc)

# BMI 결과 출력
echo "당신의 BMI는 $bmi 입니다."

# BMI 범주 판단
if [ "$(echo "$bmi < 18.5" | bc)" -eq 1 ]; then
    echo "당신은 저체중입니다."
elif [ "$(echo "$bmi > 23" | bc)" -eq 1 ]; then
    echo "당신은 과체중입니다."
else
    echo "당신은 정상체중입니다."
fi
