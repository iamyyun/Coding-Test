//
//  Single_Number.swift
//  LeetCode_Swift
//
//  Created by Yunju Yang on 12/8/2024.
//

import Foundation

// 136.Single Number : https://leetcode.com/problems/single-number
struct Single_Number {
    func solution(_ nums: [Int]) -> Int {
        var ans = 0
        
        for num in nums {
            ans ^= num
        }
        
        return ans
    }
}
