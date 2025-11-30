# Lua 언어는 " 동적 타입 언어 " 로, 이는 변수의 타입이 고정되어 있지 않고, 실행 중에 할당되는 값에 따라 언제든지 변경될 수 있음을 의미합니다.

``` lua
-- 처음 myVar는 number 타입입니다.
local myVar = 10
print(type(myVar)) -- 출력: number

-- 이제 string 타입으로 변경됩니다.
myVar = "이제 문자열" 
print(type(myVar)) -- 출력: string

-- 마지막으로 function 타입으로 변경됩니다.
myVar = function()
    print("이제 함수")
end
print(type(myVar)) -- 출력: function

```