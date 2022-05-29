//
//  올바른_괄호.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 올바른 괄호 : https://programmers.co.kr/learn/courses/30/lessons/12909
struct 올바른_괄호 {
    func solution(_ s:String) -> Bool {
        let array = Array(s)
        var count = 0
        if array[0] == ")" { return false }
        for i in array {
            if i == "(" {
                count += 1
            } else {
                if count == 0 { return false }
                count -= 1
            }
        }
        
        if count != 0 {
            return false
        }
        
        return true
    }
}
