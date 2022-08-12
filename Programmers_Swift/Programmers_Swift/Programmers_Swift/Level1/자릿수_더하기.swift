//
//  자릿수_더하기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/08.
//

import Foundation

// 자릿수 더하기 : https://school.programmers.co.kr/learn/courses/30/lessons/12931
struct 자릿수_더하기 {
    func solution(_ n:Int) -> Int {
        var result = 0
        let arr = String(n).map { String($0) }
        for number in arr {
            result += Int(number)!
        }
        
        return result
    }
}
