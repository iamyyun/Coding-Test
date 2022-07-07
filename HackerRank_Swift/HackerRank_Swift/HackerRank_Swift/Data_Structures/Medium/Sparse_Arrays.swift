//
//  Sparse_Arrays.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/07/04.
//

import Foundation

// Sparse Arrays : https://www.hackerrank.com/challenges/sparse-arrays
struct Sparse_Arrays {
    func solution(strings: [String], queries: [String]) -> [Int] {
        var result = [Int]()
        
        for query in queries {
            var count = 0
            for string in strings {
                if string == query {
                    count += 1
                }
            }
            result.append(count)
        }
        
        return result
    }
}
