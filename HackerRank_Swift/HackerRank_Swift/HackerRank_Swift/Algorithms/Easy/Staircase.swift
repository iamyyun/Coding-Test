//
//  Staircase.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/05/25.
//

import Foundation

// Staircase : https://www.hackerrank.com/challenges/staircase
struct Staircase {
    func solution(n: Int) -> Void {
        
        var str: String = ""
        for num in 1...n {
            for _ in 0..<(n-num) {
                str += " "
            }
            for _ in 1...num {
                str += "#"
            }
            str += "\n"
        }
        print(str)
    }
}
