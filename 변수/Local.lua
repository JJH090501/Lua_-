-- local은 Lua에서 변수를 선언할 때 사용하는 키워드입니다. 지역 변수를 만들 때 사용함
-- 보통은 대부분 변수 선언 전에 local을 붙여서 지역 변수를 만듬
-- 왜냐면 더 빠르고 변수 이름 충돌 안되거든

local score = 100
local playerName = "Alice"
local isActive = true

print(score)
print(playerName)

-- 변수의 값은 수정 가능
score = 100 + 50
print(score)