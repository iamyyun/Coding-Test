//
//  Diagonal_Difference.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/05/25.
//

import Foundation

// Diagonal Difference : https://www.hackerrank.com/challenges/diagonal-difference
struct Diagonal_Difference {
    func solution(arr: [[Int]]) -> Int {
        var leftSum: Int = 0
        var rightSum: Int = 0
        
        for i in 0..<arr.count {
            leftSum += arr[i][i]
            rightSum += arr[i][arr.count-i-1]
        }
        
        return abs(leftSum-rightSum)
    }
}
