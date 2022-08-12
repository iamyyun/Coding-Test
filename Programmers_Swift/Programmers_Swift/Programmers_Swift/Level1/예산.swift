//
//  예산.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/09.
//

import Foundation

// 예산 : https://school.programmers.co.kr/learn/courses/30/lessons/12982
struct 예산 {
    func solution(_ d:[Int], _ budget:Int) -> Int {
        let arr = d.sorted()
        var result = 0
        var total = 0
        
        for i in 0..<arr.count {
            let price = arr[i]
            total = total+price
            if total == budget {
                result = i+1
                break
            } else if total > budget {
                result = i
                break
            } else {
                result = i+1
            }
        }
        
        return result
    }
}
