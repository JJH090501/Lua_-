-- 이 예제는 루아의 객체 지향 프로그래밍을 이용해 스택 자료구조를 만드는 예제입니다.

local Stack = {}
Stack.__index = Stack

function Stack:new(limit)
    local self = setmetatable({}, Stack)
    self.items = {}
    self.limit = limit
    return self
end

function Stack:isEmpty() -- 스택이 비어있는지 확인하는 함수
    return #self.items == 0
end

function Stack:isFull() -- 스택이 가득 찼는지 확인하는 함수
    return #self.items >= self.limit
end

function Stack:push(item) -- 푸시를 하는 함수
    if self:isFull() then
        error("Stack overflow: cannot push to a full stack")
    end
    table.insert(self.items, item)
end

function Stack:pop() -- 팝을 하는 함수
    if self:isEmpty() then
        error("Stack underflow: cannot pop from an empty stack")
    end
    return table.remove(self.items)
end

function Stack:peek() -- 탑 아이템을 확인하는 함수
    if self:isEmpty() then
        error("Stack is empty: cannot peek")
    end
    return self.items[#self.items]
end

function Stack:size()
    return #self.items
end

-- 예제문

local myStack = Stack:new(7)

myStack:push(10)
myStack:push(20)
print("Top item:", myStack:peek())  -- 출력: Top item: 20
print("Stack size:", myStack:size())  -- 출력: Stack size: 2
print("Popped item:", myStack:pop())  -- 출력: Popped item: 20
print("Is stack empty?", myStack:isEmpty())  -- 출력: Is stack empty? false