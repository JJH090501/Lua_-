-- 테이블은 Lua에서 가장 중요하고 유일한 데이터 구조화 메커니즘입니다. 테이블은 배열, 딕셔너리, 객체 등 다양한 데이터 구조를 표현하는 데 사용됩니다.

local emptyTable = {}
local arrayTable = {10, 20, 30} -- 인덱스 1,2,3에 값이 저장됨
local dictTable = { name = "Bob", age = 25, city = "Seoul"}
local mixedTable = { 10, name = "Charlie", [5] = "index 5", { nested = true } }

print (type(arrayTable))  -- 출력: table
print (arrayTable[1])  -- 출력: 10, 루아의 인덱스는 1부터 시작
print (dictTable.name)  -- 출력: Bob, 점 표기법 
print (dictTable["age"])  -- 출력: 25, 대괄호 표기법

