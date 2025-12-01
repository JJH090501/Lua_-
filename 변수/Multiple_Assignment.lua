-- 변수와 값을 1:1로 할당
local x,y,z = 10, 20, 30

-----------------------------------

-- 값의 개수가 변수보다 많을 경우
-- 남는 값 (300)은 무시됨
local a,b = 100, 200, 300
print(a,b)  -- 출력: 100 200

-----------------------------------

-- 값의 개수가 변수보다 적을 경우
-- 부족한 변수(r)은 nil로 초기화 됨
local p, q, r = 5, 8
print(p, q, r)  -- 출력: 5 8 nil

-----------------------------------

-- 변수 값 교환(swap)에 유용하다
local tempA = 1
local tempB = 2

-- tempA와 tempB의 값을 서로 바꿉니다.
tempA, tempB = tempB, tempA
print(tempA, tempB)  -- 출력: 2 1


-- 공백을 기준으로 여러 값을 입력 받을 땐
local test_input = io.read():match("(%d+)%s+(%d+)")