//
//  Reverse_Words_in_a_String.swift
//  LeetCode_Swift
//
//  Created by Yunju Yang on 8/8/2024.
//

import Foundation

// 151.Reverse Words in a String : https://leetcode.com/problems/reverse-words-in-a-string
struct Reverse_Words_in_a_String {
    func solution(_ s: String) -> String {
        var origin = [String]()
        let strArr = s.map { String($0) }
        
        var word = [String]()
        for i in 0..<strArr.count {
            let str = strArr[i]
            if str == " " {
                if !word.contains(" ") && !word.isEmpty {
                    origin.append(word.joined())
                }
                word = [String]()
            } else {
                word.append(str)
            }
            
            if i == strArr.count-1 && !word.contains(" ") && !word.isEmpty { origin.append(word.joined()) }
        }
        
        return origin.reversed().joined(separator: " ")
    }
}
