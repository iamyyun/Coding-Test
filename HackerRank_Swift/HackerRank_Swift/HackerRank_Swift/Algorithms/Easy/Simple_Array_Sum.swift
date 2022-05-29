//
//  Simple_Array_Sum.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/05/25.
//

import Foundation

// Simple Array Sum : https://www.hackerrank.com/challenges/simple-array-sum
struct Simple_Array_Sum {
    func solution(ar: [Int]) -> Int {
        return ar.reduce(0, +)
    }
}
