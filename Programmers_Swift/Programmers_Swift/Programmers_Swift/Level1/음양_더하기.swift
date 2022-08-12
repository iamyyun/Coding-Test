//
//  음양_더하기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/09.
//

import Foundation

// 음양 더하기 : https://school.programmers.co.kr/learn/courses/30/lessons/76501
struct 음양_더하기 {
    func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
        
        var result = 0
        for i in 0..<signs.count {
            let sign = signs[i]
            if sign {
                result = result+absolutes[i]
            } else {
                result = result+(-absolutes[i])
            }
        }
        
        return result
    }
}
