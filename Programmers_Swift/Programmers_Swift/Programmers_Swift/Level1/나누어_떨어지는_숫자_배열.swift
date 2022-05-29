//
//  나누어_떨어지는_숫자_배열.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 나누어 떨어지는 숫자 배열 : https://programmers.co.kr/learn/courses/30/lessons/12910
struct 나누어_떨어지는_숫자_배열 {
    func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
        var result: [Int] = []
        for i in arr {
            if i % divisor == 0 {
                result.append(i)
            }
        }
        
        if result.count == 0 {
            return [-1]
        }
        
        return result.sorted(by: <)
    }
}
