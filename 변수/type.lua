-- type() 함수: 값의 타입을 반환
-- assert() 함수: 조건을 검사하고 조건이 false 또는 nil이면 오류를 발생

-- 타입 강제 변환

-- 숫자 예
local strNum = "123"
local result = strNum + 5 -- "123"이 숫자 123으로 자동변환됨
print(result)  -- 출력: 128
print(type(result))  -- 출력: number

-- 문자열 예
local numVal = 100
local message = "점수:" .. numVal -- 숫자 100 이 문자열 "100"으로 변환되어 자동변환됨
print(message)  -- 출력: 점수:100  
print(type(message))  -- 출력: string
-- .. 은 문자열 연결 연산자

-- 명시적 타입 변환
-- tostring() 함수: 값을 문자열로 변환
-- tonumber() 함수: 값을 숫자로 변환

-- tonumber() 함수 사용 예
local strVal = "42"
local numVal = tonumber(strVal) 
if numVal then
    print("변환된 숫자:", numVal + 8) -- 출력: 변환된 숫자: 50
else
    print("변환 실패")
end

-- 진수 변환
local hexStr = "FF"
local decVal = tonumber(hexStr, 16) -- 16진수 문자열을 10진수 숫자로 변환
print(decVal) -- 출력: 255

-- tostring() 함수 사용 예
local numData = 123
local strData = tostring(numData)
print("변환된 문자열:", strData .. "입니다.") -- 출력: 변환된 문자열: 123입니다.


-- 추가로 설명할게
-- nil 은 변수를 삭제하거니 값이 없음을 나타낼 때 사용