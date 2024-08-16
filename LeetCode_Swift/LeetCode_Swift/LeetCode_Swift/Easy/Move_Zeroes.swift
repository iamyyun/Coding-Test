//
//  Move_Zeroes.swift
//  LeetCode_Swift
//
//  Created by Yunju Yang on 5/8/2024.
//

import Foundation

// 283.Move Zeroes : https://leetcode.com/problems/move-zeroes
struct Move_Zeroes {
    func solution(_ nums: inout [Int]) {
        var i = 0, zero = 0
        while i < nums.count-zero {
            if nums[i] == 0 {
                zero += 1
                nums.append(0)
                nums.remove(at: i)
            } else {
                i += 1
            }
        }
    }
}
