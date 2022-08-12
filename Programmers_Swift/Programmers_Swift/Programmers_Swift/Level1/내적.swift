//
//  내적.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/10.
//

import Foundation

// 내적 : https://school.programmers.co.kr/learn/courses/30/lessons/70128
struct 내적 {
    func solution(_ a:[Int], _ b:[Int]) -> Int {
        var result = 0
        for i in 0..<a.count {
            result += (a[i]*b[i])
        }

        return result
    }
}
