-- 메타테이블은 루아의 핵심 자료 구조인 테이블에 대한 동작을 변경할 수 있는 특별한 테이블입니다.
-- 메타테이블을 사용하면 테이블에 대한 연산자 오버로딩, 사용자 정의 동작 등을 구현할 수 있습니다.
-- 심지어는 객체 지향 프로그래밍 패러다임을 구현하는 데도 사용할 수 있습니다.

local mytable = {}
local mymeta = { message = "This is a metatable" }

setmetatable(mytable, mymeta) -- mytable의 메타 테이블을 mymeta로 설정


local retrieved_meta = getmetatable(mytable) -- getmetatable 함수를 사용하여 mytable의 메타테이블을 가져옴
print(retrieved_meta == mymeta) -- 출력: true
print(retrieved_meta.message) -- 출력: This is a metatable

-- 메타테이블 보호 예시
local protected_meta = { __metatable = "Protected! G!" }
local t = setmetatable({}, protected_meta)

print(getmetatable(t)) 
-- 출력: Protected! G!
-- setmetatable(t, {}) -- 오류 발생: cannot change a protected metatable