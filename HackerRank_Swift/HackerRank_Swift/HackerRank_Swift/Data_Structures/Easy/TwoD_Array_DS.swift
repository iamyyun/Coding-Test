//
//  TwoD_Array_DS.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/07/03.
//

import Foundation

// 2D Array - DS : https://www.hackerrank.com/challenges/2d-array
struct TwoD_Array_DS {
    func solution(arr: [[Int]]) -> Int {
        var result = [Int]()
        
        for x in 0...arr.count-3 {
            for y in 0...arr.count-3 {
                var sum: Int = 0
                sum += arr[x][y]
                sum += arr[x][y+1]
                sum += arr[x][y+2]
                sum += arr[x+1][y+1]
                sum += arr[x+2][y]
                sum += arr[x+2][y+1]
                sum += arr[x+2][y+2]
                result.append(sum)
            }
        }
        
        return result.max()!
    }
}
