-- 전역 변수는 한 블록 내 말고, 여러 블록에서 사용할 수 있는 변수를 의미
-- 전역 변수는 일반적으로 스크립트의 시작 부분에 선언되며, 모든 함수와 블록에서 접근할 수 있습니다.

globalMessage = "이건 루아 전역 변수입니다."

function printGlobalMsg()
    print(globalMessage)  -- 전역 변수에 접근하여 출력
end

printGlobalMsg()  -- 함수 호출하여 전역 변수 출력


-- 정의되지 않은 전역 변수에 접근하면
-- 오류 발생 대신 nil 출력
print(anotherGlobal)  