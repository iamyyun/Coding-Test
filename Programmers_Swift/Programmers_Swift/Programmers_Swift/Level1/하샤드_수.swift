//
//  하샤드_수.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/10.
//

import Foundation

// 하샤드 수 : https://school.programmers.co.kr/learn/courses/30/lessons/12947
struct 하샤드_수 {
    func solution(_ x:Int) -> Bool {
        let arr = String(x).map { Int(String($0))! }
        let total = arr.reduce(0, +)
        return x%total == 0 ? true : false
    }
}
