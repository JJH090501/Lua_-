-- boolean
local isTrue = true
local isFalse = false

print("Boolean true:", isTrue)
print("Boolean false:", isFalse)

-- boolean은 nil, false를 제외한 모든 값이 true로 간주됩니다.

print(type(0))
print(type(""))
print(type(nil))
print(type(false))

-- number

local integerNum = 42          -- 정수
local floatNum = 3.14         -- 부동 소수점 숫자
local hexNum = 0x2A           -- 16진수
local scientificNum = 1.5e3   -- 과학적 표기법

print(type(integerNum), integerNum)
print(type(floatNum), floatNum)
print(type(hexNum), hexNum)
print(type(scientificNum), scientificNum)

-- 근데 중요한건 int float 이런게 다 number임
