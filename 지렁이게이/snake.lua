-- snake class

local Snake = {}
Snake.__index = Snake

function Snake:new(shape, posX, posY, direction)
    local self = setmetatable({}, Snake)
    self.shape = shape or "S"
    self.posX = posX
    self.posY = posY
    self.direction = direction
    return self
end