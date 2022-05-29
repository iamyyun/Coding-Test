//
//  N개의_최소공배수.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// N개의 최소공배수 : https://programmers.co.kr/learn/courses/30/lessons/12953
struct N개의_최소공배수 {
    func solution(_ arr:[Int]) -> Int {
        var array = arr.sorted()
        var result = array.removeLast()
        
        for _ in 0..<array.count {
            let num = array.removeLast()
            for i in 1..<100 {
                if (result*i) % num == 0 {
                    result = result*i
                    break
                }
            }
        }
        
        return result
    }
}
