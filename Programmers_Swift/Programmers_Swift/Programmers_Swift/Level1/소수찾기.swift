//
//  소수찾기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/13.
//

import Foundation

// 소수찾기 : https://school.programmers.co.kr/learn/courses/30/lessons/12921
struct 소수찾기 {
    func solution(_ n:Int) -> Int {
        func isPrime(_ n:Int) -> Bool {
            var i = 2
            while i*i <= n {
                if n%i == 0 {
                    return false
                }
                i += 1
            }
            return true
        }

        if n == 1 { return 0 }

        var count = 0
        for i in 2...n {
            if isPrime(i) { count += 1 }
        }

        return count
    }
}
