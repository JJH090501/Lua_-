-- 여기는 사과 클래스에요

Apple = {}
Apple.__index = Apple

function Apple:new(shape,appleX, appleY, score)
    local self = setmetatable({}, Apple)
    self.shape = "O"
    self.appleX = appleX
    self.appleY = appleY
    self.score = score
    return self
end