-- if 문은 가장 기본적인 조건문

local age = 20
if age < 18 then
    print("미성년자입니다.")
elseif age >= 18 and age < 65 then
    print("성인입니다.")
else
    print("노인입니다.")
end

-- 위 형식을 처럼 if, elseif, else를 사용할 수 있음