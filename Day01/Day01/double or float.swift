import Foundation

func double_or_float(){
    // Float, Double 둘 다 정수를 받을 수 있음
    // Float
    var someFloat : Float = 3.14
    someFloat = 3
    someFloat = 10_000.44_556
    
    // Double
    var someDouble : Double = 3.14
    someDouble = 3
    //someDouble = someFloat // type이 다르므로 에러발생
    someDouble = 10_000.44_556
    
    print("Printing \(type(of: someDouble)) :\(someDouble)")
    
    // 숫자 Type 변환
    let doubleNum = 4.999999
    print(doubleNum)
    var castToInt : Int = Int(doubleNum)
    print(castToInt)
    var roundToInt : Int = Int(doubleNum.rounded())
    print(roundToInt)
    print("Origin : \(doubleNum), After Case : \(castToInt), After Rounded: \(roundToInt)")

    let doubleNum1 = 0.1
    let intNum1 = 1
    print(doubleNum1 + Double(intNum1))
    
    var FloatValue: Float = 1.2345678910
    var DoubleValue: Double = 1.2345678910
     
    print("FloatValue는 : \(FloatValue), Double은 : \(DoubleValue)")
    //FloatVlaue는 : 1.2345679, Double은 : 1.234567891
    //FloatVlaue는 9에서 짤리지만, Double은 모든 소수점을 다 보여준다.

}
