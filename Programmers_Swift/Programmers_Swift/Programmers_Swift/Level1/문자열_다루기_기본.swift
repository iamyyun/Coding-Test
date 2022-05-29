//
//  문자열_다루기_기본.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 문자열 다루기 기본 : https://programmers.co.kr/learn/courses/30/lessons/12918
struct 문자열_다루기_기본 {
    func solution(_ s:String) -> Bool {
        if s.count == 4 || s.count == 6 {
            if Int(s) != nil {
                return true
            }
        }
        
        return false
    }
}
