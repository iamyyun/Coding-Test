//
//  Big_Sorting.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/05/26.
//

import Foundation

// Big Sorting : https://www.hackerrank.com/challenges/big-sorting
struct Big_Sorting {
    func solution(unsorted: [String]) -> [String] {
        return unsorted.sorted { ($0.count, $0) < ($1.count, $1) }
    }
}
