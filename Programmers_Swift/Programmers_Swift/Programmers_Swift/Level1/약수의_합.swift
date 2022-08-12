//
//  약수의_합.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/13.
//

import Foundation

// 약수의 합 : https://school.programmers.co.kr/learn/courses/30/lessons/12928
struct 약수의_합 {
    func solution(_ n:Int) -> Int {
        var total = 0
        if n == 0 { return 0 }
        for i in 1...n {
            if n%i == 0 { total += i }
        }

        return total
    }
}
