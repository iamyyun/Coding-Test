//
//  JadenCase_문자열_만들기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// JadenCase 문자열 만들기 : https://programmers.co.kr/learn/courses/30/lessons/12951
struct JadenCase_문자열_만들기 {
    func solution(_ s:String) -> String {
        var first = true
        var result = ""
        
        for str in s {
            if str == " " {
                result += " "
                first = true
                continue
            }
            
            if first {
                if let char = Int(String(str)) {
                    result += String(str)
                } else {
                    result += String(str).uppercased()
                }
                first = false
            } else {
                result += String(str).lowercased()
            }
        }
        
        return result
    }
}
