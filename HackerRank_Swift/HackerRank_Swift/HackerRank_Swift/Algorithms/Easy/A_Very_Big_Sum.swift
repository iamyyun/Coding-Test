//
//  A_Very_Big_Sum.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/05/25.
//

import Foundation

// A Very Big Sum : https://www.hackerrank.com/challenges/a-very-big-sum
struct A_Very_Big_Sum {
    func solution(ar: [Int]) -> Int {
        return ar.reduce(0, +)
    }
}
