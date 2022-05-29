//
//  위장.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 위장 : https://programmers.co.kr/learn/courses/30/lessons/42578
struct 위장 {
    func solution(_ clothes:[[String]]) -> Int {
        var dic: [String:Int] = [:]
        var result = 1
        
        for i in clothes {
            let key = i[1]
            if dic[key] != nil {
                dic[key]! += 1
            } else {
                dic[key] = 1
            }
        }
        
        for num in dic.values {
            result *= (num+1)
        }
        
        return result-1
    }
}
