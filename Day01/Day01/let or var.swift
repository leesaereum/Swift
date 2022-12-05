/*
 상수(let)와 변수(var)
 
 - 상수 : 한번 선언된 값에 대해 변경이 불가능 (앱 상에서 비밀번호)
 - 변수 : 한번 선언된 값에 대해 변경이 가능
 
 - 상수 선언 방법
 : Basic Method
    let <variable name> : <type> = <value>
 : 추론 방법 <- 값이 명확한 경우
    let <variable name> = <value>
 
 - 변수 선언 방법
 : Basic Method
    var <variable name> : <type> = <value>
 : 추론 방법 <- 값이 명확한 경우
    var <variable name> = <value>
 */

import Foundation

func var_() {
    // var [상수명] : [데이터 타입] = [값]
    var name: String = "Rumy"
    var age = 27 // 타입추론
    var job = "백수지망생" // 타입추론

    print("\(type(of: name))")
    print("\(type(of: age))")
    print("\(type(of: job))")

    job = "개발자"
    
    print(name, age, job)
}

func _let() {
    // let [상수명] : [데이터 타입] = [값]
    let name: String = "Rumy"
    let age = 27 // 타입추론
    let job = "백수지망생" // 타입추론
    
    print("\(type(of: name))")
    print("\(type(of: age))")
    print("\(type(of: job))")
    
    //job = "개발자"
    //let은 상수라 변경이 안된다. 재선언이 안되기때문에 오류가 생김
    
    print(name, age, job)
}
