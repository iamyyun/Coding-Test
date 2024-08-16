//
//  Can_Place_Flowers.swift
//  LeetCode_Swift
//
//  Created by Yunju Yang on 17/7/2024.
//

import Foundation

// 504.Can Place Flowers : https://leetcode.com/problems/can-place-flowers
struct Can_Place_Flowers {
    func solution(_ flowerbed: [Int], _ n: Int) -> Bool {
        var result = 0
        var wasZero: Bool = true
        
        for i in 0..<flowerbed.count {
            if flowerbed[i] == 1 {
                wasZero = false
            } else {
                if wasZero && (i == flowerbed.count-1 || flowerbed[i+1] == 0) {
                    result += 1
                    wasZero = false
                } else {
                    wasZero = true
                }
            }
        }
        
        return result >= n
    }
}
