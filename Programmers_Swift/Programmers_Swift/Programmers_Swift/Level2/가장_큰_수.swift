//
//  가장_큰_수.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 가장 큰 수 : https://programmers.co.kr/learn/courses/30/lessons/42746
struct 가장_큰_수 {
    func solution(_ numbers:[Int]) -> String {
        // 첫번째 자리가 가장 큰 수를 찾음
        // 첫번째 자리가 같은 숫자일 경우에는 더 큰 수를 찾음
        let sorted: [Int] = numbers.sorted {
            Int("\($0)\($1)")! > Int("\($1)\($0)")!
        }
        
        if sorted[0] == 0 {
            return "0"
        }
        
        return sorted.reduce("") { "\($0)" + "\($1)" }
    }
}
