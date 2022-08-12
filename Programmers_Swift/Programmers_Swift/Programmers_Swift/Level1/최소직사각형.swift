//
//  최소직사각형.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/12.
//

import Foundation

// 최소직사각형 : https://school.programmers.co.kr/learn/courses/30/lessons/86491
struct 최소직사각형 {
    func solution(_ sizes:[[Int]]) -> Int {
        var bigArr = [Int]()
        var smallArr = [Int]()
        for size in sizes {
            bigArr.append(size.max()!)
            smallArr.append(size.min()!)
        }

        return bigArr.max()!*smallArr.max()!
    }
}
