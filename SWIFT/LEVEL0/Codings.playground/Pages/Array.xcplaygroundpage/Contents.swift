//: [Previous](@previous)

import Foundation

//문자열 배열 strlist가 매개변수로 주어집니다.
//strlist 각 원소의 길이를 담은 배열을 retrun하도록 solution 함수를 완성해주세요.

func strListArr(_ strlist: [String]) -> [Int] {
    var arr: [Int] = []
    for i in 0...(strlist.count - 1) {
        arr.append(strlist[i].count)
    }
    return arr
}

func strListArr2(_ strlist:[String]) -> [Int] {
    return strlist.map({ $0.count })
}

strListArr(["We", "are", "the", "world!"])

//문제 설명
//정수가 들어 있는 배열 num_list가 매개변수로 주어집니다. num_list의 원소의 순서를 거꾸로 뒤집은 배열을 return하도록 solution 함수를 완성해주세요.
//

func reverseArr(_ num_list: [Int]) -> [Int] {
    var revert: [Int] = []
    var idx = num_list.count - 1
    for _ in 0...idx {
        revert.append(num_list[idx])
        idx -= 1
    }
    return revert
}

func reverseArr2(_ numList: [Int]) -> [Int] { numList.reversed() }

reverseArr([1, 2, 3, 4, 5])

//문제 설명
//사분면은 한 평면을 x축과 y축을 기준으로 나눈 네 부분입니다. 사분면은 아래와 같이 1부터 4까지 번호를매깁니다.
//source: image1
//x 좌표와 y 좌표가 모두 양수이면 제1사분면에 속합니다.
//x 좌표가 음수, y 좌표가 양수이면 제2사분면에 속합니다.
//x 좌표와 y 좌표가 모두 음수이면 제3사분면에 속합니다.
//x 좌표가 양수, y 좌표가 음수이면 제4사분면에 속합니다.
//x 좌표 (x, y)를 차례대로 담은 정수 배열 dot이 매개변수로 주어집니다. 좌표 dot이 사분면 중 어디에 속하는지 1, 2, 3, 4 중 하나를 return 하도록 solution 함수를 완성해주세요.
//
//제한사항
//dot의 길이 = 2
//dot[0]은 x좌표를, dot[1]은 y좌표를 나타냅니다
//-500 ≤ dot의 원소 ≤ 500
//dot의 원소는 0이 아닙니다.

func checkCoord(_ dot: [Int]) -> Int {
    if dot[0] > 0 && dot[1] > 0 {
        return 1
    } else if dot[0] < 0 && dot[1] > 0 {
        return 2
    } else if dot[0] < 0 && dot[0] < 0 {
        return 3
    } else {
        return 4
    }
}

//문제 설명
//정수 배열 numbers와 정수 num1, num2가 매개변수로 주어질 때,
// numbers의 num1번 째 인덱스부터 num2번째 인덱스까지 자른 정수 배열을
// return 하도록 solution 함수를 완성해보세요.
//
//제한사항
//2 ≤ numbers의 길이 ≤ 30
//0 ≤ numbers의 원소 ≤ 1,000
//0 ≤num1 < num2 < numbers의 길이
//입출력 예
//numbers           num1    num2     result
//[1, 2, 3, 4, 5]    1      3       [2, 3, 4]
//[1, 3, 5]          1      2       [3, 5]
//입출력 예 설명
//입출력 예 #1
//
//[1, 2, 3, 4, 5]의 1번째 인덱스 2부터 3번째 인덱스 4 까지 자른 [2, 3, 4]를 return 합니다.
//입출력 예 #2
//
//[1, 3, 5]의 1번째 인덱스 3부터 2번째 인덱스 5까지 자른 [3, 5]를 return 합니다.

func cutArr(_ numbers: [Int], _ num1: Int, _ num2: Int) -> [Int]{
    var result: [Int] = []
    for idx in num1...num2 {
        result.append(numbers[idx])
    }
    return result
}

// 정수가 담긴 리스트 num_list가 주어질 때,
// num_list의 원소 중 짝수와 홀수의 개수를 담은 배열을 return 하도록 solution 함수를 완성해보세요.

func countOddEven(_ num_list: [Int]) -> [Int] {
    var cnt: Int = 0
    for num in num_list {
        if (num % 2 == 0) {
            cnt += 1
        }
    }
    return [cnt, (num_list.count - cnt)]
}

//문제 설명
//문자열 my_string이 매개변수로 주어집니다. my_string을 거꾸로 뒤집은 문자열을 return하도록 solution 함수를 완성해주세요.

func strReverse(_ my_string:String) -> String {
    return String(my_string.reversed())
}

//최댓값 만들기 (1)
//문제 설명
//정수 배열 numbers가 매개변수로 주어집니다. numbers의 원소 중 두 개를 곱해 만들 수 있는 최댓값을 return하도록 solution 함수를 완성해주세요.
func multiplyAndFindMaxNum(_ numbers: [Int]) -> Int {
    let sortedArr = numbers.sorted(by: >)
    
    return sortedArr[0] * sortedArr[1]
}
multiplyAndFindMaxNum([0, 31, 24, 10, 1, 9])

// 문제 설명
// 선분 세 개로 삼각형을 만들기 위해서는 다음과 같은 조건을 만족해야 합니다.
//
// 가장 긴 변의 길이는 다른 두 변의 길이의 합보다 작아야 합니다.
// 삼각형의 세 변의 길이가 담긴 배열 sides이 매개변수로 주어집니다. 세 변으로 삼각형을 만들 수 있다면 1, 만들 수 없다면 2를 return하도록 solution 함수를 완성해주세요.

func makeTriangle(_ sides: [Int]) -> Int {
    let sortedArr = sides.sorted(by: >)
    if(sortedArr[0] < (sortedArr[1] + sortedArr[2])){
        return 1
    } else {
        return 2
    }
}
makeTriangle([1, 2, 3])
makeTriangle([3, 6, 2])
makeTriangle([199, 72, 222])

//
//문제 설명
//문자열 my_string과 정수 n이 매개변수로 주어질 때, my_string에 들어있는 각 문자를 n만큼 반복한 문자열을 return 하도록 solution 함수를 완성해보세요.
func repeatedStringPrint(_ my_string: String, _ n: Int) -> String {
    var result: String = ""
    for eachStr in my_string {
        for _ in 1...n{
            result.append(eachStr)
        }
    }
    
    return result
}

print(repeatedStringPrint("hello", 3))

//문제 설명
//정수가 담긴 배열 array와 정수 n이 매개변수로 주어질 때, array에 n이 몇 개 있는 지를 return 하도록 solution 함수를 완성해보세요.
func checkStringInArr(_ array:[Int], _ n: Int) -> Int {
    var cnt: Int = 0
    for num in array {
        if(num == n){
            cnt += 1
        }
    }
    
    return cnt
}

// 문자열 my_string과 문자 letter이 매개변수로 주어집니다. my_string에서 letter를 제거한 문자열을 return하도록 solution 함수를 완성해주세요.

func eliminateLetter(_ my_string: String, _ letter: String) -> String {
    return my_string.filter{ String($0) != letter }
}

func eliminateLetter2(_ my_string:String, _ letter: String) -> String {
    var result = ""
    for s in my_string where String(s) != letter {
        result.append(s)
    }
    return result
}

func eliminateLetter3(_ my_string:String, _ letter:String) -> String {
    return my_string.replacingOccurrences(of: letter, with: "")
}

eliminateLetter("BCBdbe", "B")

// 문제 설명
//머쓱이네 피자가게는 피자를 두 조각에서 열 조각까지 원하는 조각 수로 잘라줍니다.
//피자 조각 수 slice와 피자를 먹는 사람의 수 n이 매개변수로 주어질 때,
//n명의 사람이 최소 한 조각 이상 피자를 먹으려면 최소 몇 판의 피자를 시켜야 하는지를
//return 하도록 solution 함수를 완성해보세요.

print("-------------")
func pizzaSlice(_ slice: Int, _ n: Int) -> Int {
    return Int(ceil(Double(n)/(Double(slice))))
}
pizzaSlice(7, 10)
pizzaSlice(4, 12)

//문제 설명
//머쓱이는 할머니께 생신 축하 편지를 쓰려고 합니다.
//할머니가 보시기 편하도록 글자 한 자 한 자를 가로 2cm 크기로 적으려고 하며, 편지를 가로로만 적을 때,
//축하 문구 message를 적기 위해 필요한 편지지의 최소 가로길이를 return 하도록 solution 함수를 완성해주세요.

func findminX(_ message: String) -> Int {
    return message.count * 2
}

//문제 설명
//머쓱이네 피자가게는 피자를 여섯 조각으로 잘라 줍니다.
//피자를 나눠먹을 사람의 수 n이 매개변수로 주어질 때,
//n명이 주문한 피자를 남기지 않고 모두 같은 수의 피자 조각을 먹어야 한다면
//최소 몇 판을 시켜야 하는지를 return 하도록 solution 함수를 완성해보세요.
func pizzaCnt(_ n: Int) -> Int {
    func gcd(_ a: Int, _ b: Int) -> Int {
        if b == 0 {
            return a
        } else {
            return gcd(b, a % b)
        }
    }
    return n / gcd(6, n)
}


//: [Next](@next)
