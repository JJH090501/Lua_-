-- 루아에는 다양한 연산자가 있음

-- 예시
local A = 1
local B = 2

-- 산술 연산자 +, -, *, /, //, %, ^
print(A+B) -- 더하기
print(A-B) -- 빼기
print(A*B) -- 곱하기
print(A/B) -- 나누기
print(A//B) -- 몫
print(A%B) -- 나머지
print(A^B) -- 제곱

----------------

-- 비교 연산자 ==, ~=, <, <=, >, >=
print(A==B) -- 같다
print(A~=B) -- 같지 않다
print(A<B) -- 작다
print(A<=B) -- 작거나 같다
print(A>B) -- 크다
print(A>=B) -- 크거나 같다

----------------

-- 논리 연산자 and, or, not
print(A~=B and A<B) -- 두 조건이 모두 참이면
print(A==B or A<B) -- 또는, 조건 중 하나만 참이면
print(not (A==B)) -- 부정

----------------

-- 연결 연산자 ..
print("Hello, " .. "world!") -- 문자열 연결

----------------

-- 길이 연산자 #
local str = "Hello"
print(#str) -- 문자열 길이
local tbl = {1, 2, 3, 4, 5}
print(#tbl) -- 테이블 길이 (배열 부분)