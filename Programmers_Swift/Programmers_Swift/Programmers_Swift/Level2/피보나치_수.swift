//
//  피보나치_수.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 피보나치 수 : https://programmers.co.kr/learn/courses/30/lessons/12945
struct 피보나치_수 {
    func solution(_ n:Int) -> Int {
        var number = 0
        if n == 0 {
            return 0
        } else if n == 1 || n == -1 {
            return 1
        } else if n > 1 {
            number = n
        } else {
            number = -n
        }
        
        var fibonacci: [Int] = [0, 1]
        
        for i in 2...number {
            fibonacci.append((fibonacci[i-2] + fibonacci[i-1])%1234567)
        }
        
        return fibonacci[number]
    }
}
