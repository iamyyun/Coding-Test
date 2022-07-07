//
//  Breaking_the_Records.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/07/04.
//

import Foundation

// Breaking the Records : https://www.hackerrank.com/challenges/breaking-best-and-worst-records
struct Breaking_the_Records {
    func solution(scores: [Int]) -> [Int] {
        
        var records = [Int](repeating: 0, count: 2) // max, min
        var min = 0
        var max = 0
        for (index, element) in scores.enumerated() {
            if index == 0 {
                min = element
                max = element
            } else {
                if element != min && element != max {
                    if element < min {
                        min = element
                        records[1] += 1
                    } else if element > max {
                        max = element
                        records[0] += 1
                    }
                }
            }
        }
        
        return records
    }
}
