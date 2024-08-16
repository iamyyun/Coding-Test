//
//  Kids_With_the_Greatest_Number_of_Candies.swift
//  LeetCode_Swift
//
//  Created by Yunju Yang on 14/7/2024.
//

import Foundation

// 1431.Kids With the Greatest Number of Candies : https://leetcode.com/problems/kids-with-the-greatest-number-of-candies
struct Kids_With_the_Greatest_Number_of_Candies {
    func solution(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        let max = candies.max() ?? 0
        return candies.map { $0+extraCandies >= max }
    }
}
