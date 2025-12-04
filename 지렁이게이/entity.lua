-- 여긴 점수를 갉아먹는 아주 나쁜 엔티티 클래스

local Entity = {}
Entity.__index = Entity

function Entity:new(shape,entutyX, entityY)
    local self = setmetatable({}, Entity)
    self.shape = "E"
    self.entutyX = entutyX
    self.entityY = entityY
    return self
end