//
//  두_개_뽑아서_더하기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 두 개 뽑아서 더하기 : https://programmers.co.kr/learn/courses/30/lessons/68644
struct 두_개_뽑아서_더하기 {
    func solution(_ numbers:[Int]) -> [Int] {
        var result: [Int] = []
        for i in 0..<numbers.count {
            for j in i+1..<numbers.count {
                let sum = numbers[i]+numbers[j]
                if !result.contains(sum) {
                    result.append(sum)
                }
            }
        }
        
        result.sort()
        return result
    }
}
