import Foundation

func int_or_unit(){
    let arrayOfInt : [Int] = [1,2,3]
    let arrayOfUInt : [UInt] = [1,2,3]
    
    print(type(of: arrayOfInt[0]))
    print(type(of: arrayOfUInt[0]))
    print(type(of: arrayOfInt[0])==type(of: arrayOfUInt[0]))
    // 스위프트에서 Int와 UInt는 완전히 다른 타입이므로 같지 않다는 결과가 나옴
    
    //arrayOfInt as [UInt]
    //에러: `[Int]` 타입을 `[UInt]` 타입으로 강제로 바꿀 수 없습니다

    //이를 해결하기 위해 map(_:)메서드의 numericCast 함수를 인자로 넣을 수 있다.
    arrayOfInt.map(numericCast) as [UInt]
}
