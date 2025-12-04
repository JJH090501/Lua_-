-- 여긴 맵 작성 클래스

local Snake = require("지렁이게이/snake.lua")
local snake = Snake:new("@", 10, 5, "right")

local Map = {}
Map.__index = Map

function Map:new(width, height)
    local self = setmetatable({}, Map)
    self.width = width
    self.height = height
    return self
end

function Map:build(width, height)
    local map = {}
    for y = 1, height do
        for x =1, width do
            if x == 1 or x == width or y == 1 or y == height then
                io.write(".")
            elseif snake.posX == x and snake.posY == y then
                io.write(snake.shape)
            else
                io.write(" ")
            end
        end
    end
    return map
end