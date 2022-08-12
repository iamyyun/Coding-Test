//
//  행렬의_곱셈.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/08.
//

import Foundation

// 행렬의 곱셈 : https://school.programmers.co.kr/learn/courses/30/lessons/12949
struct 행렬의_곱셈 {
    func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
        let columns = arr1.count
        let rows = arr2[0].count
        var newArr = [[Int]]()
        
        for i in 0..<columns {
            var subArr = [Int]()
            for j in 0..<rows {
                var num = 0
                for k in 0..<arr2.count {
                    num += arr1[i][k]*arr2[k][j]
                }
                subArr.append(num)
                num = 0
            }
            newArr.insert(contentsOf: [subArr], at: i)
        }
        
        return newArr
    }
}
