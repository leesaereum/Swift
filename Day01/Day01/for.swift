import Foundation
func for_ (){
    let count = 1...10

    for number in count {
      print("숫자는 \(number) 입니다")
    }
    
    let albums = ["다이너마이트", "디오니소스", "불타오르네"]
    for album in albums {
        print("\(album)은 BTS의 노래입니다.")
    }

    for _ in 1...5 {
        print("play")
    }//play 다섯줄 출력
    
    var people = ["players", "haters", "heart-breakers", "fakers"]
    var actions = ["play", "hate", "break", "fake"]
     
    for i in 0 ..< people.count {
        print("\(people[i]) gonna \(actions[i])")
    }
}

