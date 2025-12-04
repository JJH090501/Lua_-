-- 이 파일은 코루틴 예제1 입니다.

-- 코루틴 함수 정의
local function my_coroutine_func(arg1, arg2)
    print("코루틴 시작, 인자:", arg1, arg2)

    local r1 = coroutine.yield("첫 번째 yield 값")
    -- 중단하고 값을 resume 호출 측에 전달
    print("코루틴 다시 재개됨, yield의 반환값:", r1)

    local r2 = coroutine.yield("두 번째 yield 값")
    print("코루틴 다시 재개됨, yield의 반환값:", r2)

    return "코루틴 최종 결과" -- 코루틴 종료 및 결과 반환
end

-- 1. 코루틴 생성
local co = coroutine.create(my_coroutine_func)
print("코루틴 상태:", coroutine.status(co)) -- 출력: suspended  

-- 2. 코루틴 첫 실행 (resume)
print("--- 첫 번째 resume 호출 ---")
local success1, result1 = coroutine.resume(co, "인자1", "인자2")

-- 3. 코루틴 재개 (두번째 resume)
print("--- 두 번째 resume 호출 ---")
local success2, result2 = coroutine.resume(co, "yield1 반환값 전달")
-- yield의 반환 값으로 전달됨
print("Resume 성공:", success2) -- 출력: true
print("Resume 결과:", result2) -- 출력: 두 번째 yield 값
print("코루틴 상태:", coroutine.status(co)) -- 출력: suspended

-- 4. 코루틴 다시 재개 (세번째 resume)
print("--- 세 번째 resume 호출 ---")
local success3, result3 = coroutine.resume(co, "yield2 반환값 전달")
print("Resume 성공:", success3) -- 출력: true
print("Resume 결과:", result3) -- 출력: 코루틴 최종 결과
print("코루틴 상태:", coroutine.status(co)) -- 출력: dead (함수가 return 했으므로)

-- 5. 종료된 코루틴 재개 시도
print("--- 종료 후 resume 시도 ---")
local success4, result4 = coroutine.resume(co)
print("Resume 성공:", success4) -- 출력: false
print("Resume 결과:", result4) -- 출력: cannot resume dead coroutine


