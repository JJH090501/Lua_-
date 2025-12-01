-- 루아에서 클래스를 사용하여 객체 지향 프로그래밍을 하는 방법은 간단합니다.
-- 그저 메타테이블 뚝딱 하면 됨요

Car = {}
Car.__index = Car

function Car:new(brand, model, year)
    local self = setmetatable({}, Car)
    self.brand = brand
    self.model = model
    self.year = year
    return self
end

function Car:getInfo()
    return string.format("%d %s %s", self.year, self.brand, self.model)
end

-- 자동차 객체 생성
local myCar = Car:new("Toyota", "Corolla", 2020)
print(myCar:getInfo())  -- 출력: 2020 Toyota Corolla