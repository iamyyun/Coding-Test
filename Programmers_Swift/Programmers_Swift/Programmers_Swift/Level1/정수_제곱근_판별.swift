//
//  정수_제곱근_판별.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/09.
//

import Foundation

// 정수 제곱근 판별 : https://school.programmers.co.kr/learn/courses/30/lessons/12934
struct 정수_제곱근_판별 {
    func solution(_ n:Int64) -> Int64 {
        let num = sqrt(Double(n))
        if floor(num) == num {
            return Int64(pow(num+1, 2))
        }
        
        return -1
    }
}
