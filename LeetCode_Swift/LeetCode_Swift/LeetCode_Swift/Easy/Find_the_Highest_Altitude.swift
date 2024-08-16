//
//  Find_the_Highest_Altitude.swift
//  LeetCode_Swift
//
//  Created by Yunju Yang on 5/8/2024.
//

import Foundation

// 1732.Find the Highest Altitude : https://leetcode.com/problems/find-the-highest-altitude
struct Find_the_Highest_Altitude {
    func solution(_ gain: [Int]) -> Int {
        var altitudes = [0]
        for g in gain {
            altitudes.append(g+altitudes.last!)
        }
        
        return altitudes.max()!
    }
}
