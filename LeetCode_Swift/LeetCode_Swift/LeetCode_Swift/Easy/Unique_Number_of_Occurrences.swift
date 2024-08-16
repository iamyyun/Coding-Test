//
//  Unique_Number_of_Occurrences.swift
//  LeetCode_Swift
//
//  Created by Yunju Yang on 8/8/2024.
//

import Foundation

// 1207.Unique Number of Occurrences : https://leetcode.com/problems/unique-number-of-occurrences
struct Unique_Number_of_Occurrences {
    func solution(_ arr: [Int]) -> Bool {
        var result = true
        var numArr = [Int]()
        let numSet = Set(arr)
        for uniq in numSet {
            var count = 0
            for num in arr {
                if uniq == num { count += 1 }
            }
            
            if numArr.contains(count) {
                result = false
                break
            } else {
                numArr.append(count)
            }
            count = 0
        }
        
        return result
    }
}
