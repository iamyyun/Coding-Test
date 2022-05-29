//
//  Compare_the_Triplets.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/05/25.
//

import Foundation

// Compare the Triplets : https://www.hackerrank.com/challenges/compare-the-triplets
struct Compare_the_Triplets {
    func solution(a: [Int], b: [Int]) -> [Int] {
        var alice: Int = 0
        var bob: Int = 0
        
        for i in 0..<a.count {
            if a[i] > b[i] {
                alice += 1
            } else if a[i] < b[i] {
                bob += 1
            }
        }
        
        return [alice, bob]
    }
}
