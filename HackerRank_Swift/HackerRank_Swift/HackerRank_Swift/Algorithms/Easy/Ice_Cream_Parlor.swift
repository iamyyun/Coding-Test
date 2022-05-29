//
//  Ice_Cream_Parlor.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/05/26.
//

import Foundation

// Ice Cream Parlor : https://www.hackerrank.com/challenges/icecream-parlor
struct Ice_Cream_Parlor {
    func solution(m: Int, arr: [Int]) -> [Int] {
        
        var result = [Int]()
        
        for i in 0..<arr.count {
            for j in i+1..<arr.count {
                let a = arr[i]
                let b = arr[j]
                if a+b == m {
                    result.append(i+1)
                    result.append(j+1)
                    break
                }
            }
        }
        
        return result
    }
}
