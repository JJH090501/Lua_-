-- 0부터 시작하여 1씩 증가하는 숫자를 무한히 생성하는 제너레이터
local function count_generator()
    local i = 1
    while true do
        coroutine.yield(i)
        i = i + 1
    end
end

-- 코루틴 생성
local co_count = coroutine.create(count_generator)

print(coroutine.resume(co_count)) -- 출력: true 1
print(coroutine.resume(co_count)) -- 출력: true 2
print(coroutine.resume(co_count)) -- 출력: true 3
print(coroutine.resume(co_count)) -- 출력: true 4