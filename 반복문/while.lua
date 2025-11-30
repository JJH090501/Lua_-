-- while문은 가장 기본 반복문
-- 조건이 참인 동안 반복문 실행
-- 실행 회수가 0번 이상일 수도 있음

local count = 1 -- 반복 횟수를 세기 위한 변수

while count <= 5 do
    print("반복 횟수: " .. count)
    count = count + 1 -- 반복 횟수 증가
end

-- while true do ~end 형식이면 무한히 실행
-- 무한 루프를 만들 때 사용

-- 반복문 중단은 break 사용

while true do
    print("이 메시지는 무한히 출력됩니다.")
    local input = io.read()
    if input == "종료" then
        print("반복문을 종료합니다.")
        break -- 반복문 종료
    else
        goto continue -- 다음 반복으로 건너뜀
    end

    ::continue:: -- goto 문을 위한 라벨, 꼭 정의해야 함 goto continue 쓰려면
end

-- goto continue는 다음 반복으로 건너뛰는 역할
-- ::continue:: 라벨이 반드시 있어야 함
-- 레이블의 역할은 goto 문이 이동할 위치 지정
-- goto 문은 일반적으로 권장되지 않음