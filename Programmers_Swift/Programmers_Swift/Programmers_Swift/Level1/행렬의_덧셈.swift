//
//  행렬의_덧셈.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 행렬의 덧셈 : https://programmers.co.kr/learn/courses/30/lessons/12950
struct 행렬의_덧셈 {
    func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
        let count = arr1.count
        let subCount = arr1[0].count
        var resultArr:[[Int]] = []
        for i in 0..<count {
            var subArr:[Int] = []
            for j in 0..<subCount {
                subArr.insert(arr1[i][j]+arr2[i][j], at: j)
            }
            resultArr.insert(contentsOf: [subArr], at: i)
        }
        return resultArr
        
        //return zip(arr1, arr2).map{zip($0,$1).map{$0+$1}}
    }
}
