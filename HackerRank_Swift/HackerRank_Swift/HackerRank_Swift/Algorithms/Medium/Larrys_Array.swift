//
//  Larrys_Array.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/07/04.
//

import Foundation

// Larry's Array : https://www.hackerrank.com/challenges/larrys-array
struct Larrys_Array {
    func solution(A: [Int]) -> String {
        
        var count = 0
        for i in 0..<A.count {
            for j in i+1..<A.count {
                if A[i]>A[j] {
                    count += 1
                }
            }
        }
        
        if count%2 == 0 {
            return "YES"
        } else {
            return "NO"
        }
    }
}
