//: Playground - noun: a place where people can play

import UIKit

let names = ["Leonard", "Sheldon", "Penny", "Raju"]
// 1. 이름을 순서대로 출력하시오

let answer1 = names.map { print($0) }


// 2. 이름을 거꾸로 출력하시오

let reverse = names.map({
    String($0.characters.reversed())
})
print(reverse)

// 3. 이름을 알파벳 순서대로 출력하시오
let answer3 = names.sorted(){ $0 < $1 }

print(answer3)
// 4. 이름의 마지막 알파벳 순서대로 출력하시오.

let lastAlpha = names.sorted(){
    $0.characters.last!<$1.characters.last!
}
print(lastAlpha)

// 5. 다음 Subway2, subway3, subway4를 각각 오름차순으로 출력하시오
var subway = ["subway2": ["한양대", "왕십리", "상왕십리", "신당", "을지로4가", "을지로3가", "을지로입구"], "subway3": ["을지로3가", "충무로", "동대입구", "약수", "금호", "옥수", "압구정"], "subway4": ["한대앞", "상록수", "반월", "대야미", "수리산", "산본", "금정"]]

var sorted = []
subway.map({print("\n" + $0.0);sorted = $0.1.sort();sorted.map({print($0)})})