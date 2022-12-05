import Foundation

/*
 -------------------------
 상수나 변수의 작명 규칙
 -------------------------
 - Camel Case : function, method, variable, constant...
 ex) studentName  ,studentAge ....
 
 - Pascal Case : class,struct, enum, extension
 ex) StudentName, StudnetAge...
 
 - Snake Case: underbar(_)로 연결하여 사용
 ex.)student_name, student_age
 
 * 대소문자 구분
 *첫 글자를 숫자나 특수문자로 시작하면 안되나 _(underbar)는 사용가능
 (* underbar의 용도는 따로 존재함)
 */
func guardInFunc (string: String?) {
    guard string != nil
    else {
        print("멈춤")
        return }
      //nil 입력을 가드한다는 뜻
        //nil이면 else절을 수행하여 return으로 아래 명령이 실행되지 않는다.
    print(string!, "second param", separator: "")
}

guardInFunc(string:"test")
guardInFunc(string:nil)
