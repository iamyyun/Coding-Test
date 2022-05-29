//
//  Plus_Minus.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/05/25.
//

import Foundation

// Plus Minus : https://www.hackerrank.com/challenges/plus-minus
struct Plus_Minus {
    func solution(arr: [Int]) -> [Double] {
        var plusCount: Double = 0.000000
        var minusCount: Double = 0.000000
        var zeroCount: Double = 0.000000
        
        for num in arr {
            if num > 0 {
                plusCount += 1
            } else if num < 0 {
                minusCount += 1
            } else {
                zeroCount += 1
            }
        }
        
        let digit: Double = pow(10, 6)
        let count = Double(arr.count)
        print(round(plusCount/count*digit)/digit)
        print(round(minusCount/count*digit)/digit)
        print(round(zeroCount/count*digit)/digit)
        
        return [round(plusCount/count*digit)/digit, round(minusCount/count*digit)/digit, round(zeroCount/count*digit)/digit]
    }
}
