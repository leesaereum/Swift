import Foundation
func optional_ (){
    let numbers: [Int?] = [nil, 100, -10, nil, 6, 20]
     
    for item in numbers {
        switch item {
        case .some(let someValue) where someValue > 50:
            print("큰 값: \(someValue)")
        case .some(let someValue) where someValue < 0:
            print("음수 : \(someValue)")
        case .some(let someValue):
            print("양수: \(someValue)")
        case .none:
            print("nil")
        }
    }
}
