//
//  Left_Rotation.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/07/03.
//

import Foundation

// Left Rotation : https://www.hackerrank.com/challenges/array-left-rotation
struct Left_Rotation {
    func solution(d: Int, arr: [Int]) -> [Int] {
        var newArr = arr
        
        for i in 0..<d {
            newArr.append(newArr[i])
        }
        newArr.removeFirst(d)
        
        return newArr
    }
}
