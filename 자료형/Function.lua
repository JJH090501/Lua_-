-- 루아에선 함수 호출을 function()으로 시작해 end로 끝낸다.

local function sayHello()
    print("Hello, World!")
end

sayHello()

-- 나머진 파이썬과 같음
-- 밑엔 괄호 안에 인자 
local function getName(name)
    print("My name is " .. name)
end

getName("Lua")