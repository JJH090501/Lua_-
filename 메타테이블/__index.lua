-- __index를 사용하여 테이블에 존재하지 않는 키에 접근할 때 기본값을 제공할 수 있습니다.
-- 가장 중요하고 많이 사용하는 메타 메소드 중 하나

-- 기본값을 담고 있는 테이블
local defaults = { x = 0, y = 0 }

-- 메타테이블 정의
local mt_func = {
    __index = function(table, key)
        print("메타메소드 __index 호출됨, key:", key)
        -- defaults 테이블에서 키를 찾아 반환
        return defaults[key]
    end
}

local point1 = setmetatable({ x = 10 }, mt_func)

-- point1에 'x'가 있으므로 바로 접근
print(point1.x)
-- 출력: 10

-- point1에 'y'가 없으므로 __index 메타메소드가 호출되어 defaults에서 값을 가져옴
print(point1.y)
-- 출력: 메타메소드 __index 호출됨, key: y
-- y: 0

-- point1과 defaults 모두 'z'가 없으므로 nil 반환
print(point1.z)
-- 출력: 메타메소드 __index 호출됨, key: z
-- 출력: nil
