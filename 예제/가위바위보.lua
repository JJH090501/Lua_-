-- 이 코드는 Lua 스크립트를 활용하여 가위바위보 게임을 만드는 코드 입니다.
-- 각 코드 줄마다 적힌 주석을 보고 잘 학습해 보세요.

function rematch() -- 다시 하기 함수
    print("다시 하시겠습니까? (예/아니오)")
    local answer = io.read()
    if answer == "예" then
        return true
    elseif answer == "아니오" then
        print("게임을 종료합니다. 감사합니다!")
        return false
    else
        print("잘못된 입력입니다. 다시 시도하세요.")
        return rematch() -- 잘못된 입력 시 다시 함수 호출
    end
end

while true do
    print("가위바위보 게임에 오신 것을 환영합니다!")
    print("가위, 바위, 보 중 하나를 선택하세요 (종료하려면 '종료'):")
    local input = io.read() -- 사용자로부터 입력을 받음

    if input == "종료" then -- 사용자가 '종료'를 입력하면 게임 종료
        print("게임을 종료합니다. 감사합니다!")
        break -- 반복문 종료
    end

    if input ~= "가위" and input ~= "바위" and input ~= "보" then -- 입력이 올바르지 않은 경우 처리
        print("잘못된 입력입니다. 다시 시도하세요.")
        goto continue -- 잘못된 입력 시 다음 반복으로 건너뜀
    end

    local choices = {"가위", "바위", "보"} -- 가위바위보 선택지

    -- 컴퓨터의 선택을 무작위로 결정
    local result = choices[math.random(1, 3)]

    print("컴퓨터의 선택: " .. result) -- 컴퓨터의 선택 출력

    -- 사용자의 입력과 컴퓨터의 선택을 비교하여 결과 결정
    if input == result then -- 비기는 경우
        print("비겼습니다!")
    elseif -- 이기는 경우
        (input == "가위" and result == "보") or
        (input == "바위" and result == "가위") or
        (input == "보" and result == "바위") then
        print("당신이 이겼습니다!")
    else -- 나머지 경우는 패배로 처리
        print("컴퓨터가 이겼습니다!")
    end

    local playAgain = rematch()
    if not playAgain then
        break
    end

    ::continue:: -- goto 문을 위한 라벨, 꼭 정의해야 함 goto continue 쓰려면
end

-- 내가 직접 짠거임 노피티 안씀 goto continue 제외 ;-;