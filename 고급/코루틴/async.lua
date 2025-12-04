local function fetch_data(url)
    print("Fetching data from:", url)
    -- 비동기 HTTP GET 요청 시작 (콜백 또는 다른 메커니즘 사용)
    local async_handle = async_http_get(url, function(response_body) -- 
        -- 작업 완료 시 호출될 콜백: 코루틴을 결과와 함께 재개
        coroutine.resume(co_fetch, response_body)
    end)

    print("Coroutine yielding while waiting for data...")
    local result = coroutine.yield() -- 결과 기다리며 중단
    print("Coroutine resumed with data!")
    return result
end

-- 메인 로직 (또는 다른 코루틴)
co_fetch = coroutine.wrap(fetch_data)
-- 코루틴 생성 및 저장 (콜백에서 resume하기 위해)

local success, data = co_fetch("http://example.com/api/data") -- 코루틴 시작

if success then
    print("Data recieved successfully (from yield):", data)
    -- 아직은 yield 반환값이 없으므로 data는 nil
else
    print("Error fetching data:", data)
end

-- 위 코드는 openresty의 ngx.socket API 또는 Luvit 라이브러리 등의 이벤트 루프와 비동기 I/O를 지원하는 환경에서 동작해야 합니다.