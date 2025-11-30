-- for 문 또한 기본 반복문

-- 1. 숫자 범위로 반복하기
for i = 1, 5 do
    print("숫자 범위 반복: " .. i)
end

-- 2. 단계 지정하여 반복하기
for i = 1, 10, 2 do
    print("단계 지정 반복: " .. i)
end

-- 3. 테이블의 요소 반복하기
local fruits = {"사과", "바나나", "체리"}
for index, fruit in ipairs(fruits) do
    print("과일 " .. index .. ": " .. fruit)
end
-- 또는
for _, fruit in ipairs(fruits) do
    print("과일: " .. fruit)
end
-- 또는
for index = 1, #fruits do
    print("과일 " .. index .. ": " .. fruits[index])
end

-- 4. 딕셔너리 테이블 반복하기
local person = {name = "Alice", age = 30, city = "New York"}
for key, value in pairs(person) do
    print(key .. ": " .. tostring(value))
end
-- 또는
for key in pairs(person) do
    print("키: " .. key)
    print("값: " .. tostring(person[key]))
end

-- 설명할 필요도 없이 vs코드가 후딱 자동완성 해주노 ㄴㅇㅅ