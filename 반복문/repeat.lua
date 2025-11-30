-- repeat으로도 반복문 생성 가능
-- repeat ~ until 구문은 조건이 참이 될 때까지 반복 실행
-- 반드시 한 번은 실행됨

local count = 1 -- 반복 횟수를 세기 위한 변수

repeat
    print("반복 횟수: " .. count)
    count = count + 1 -- 반복 횟수 증가
until count > 5  -- count가 5보다 커지면 반복 종료