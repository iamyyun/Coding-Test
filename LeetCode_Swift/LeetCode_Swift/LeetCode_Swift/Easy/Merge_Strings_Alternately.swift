//
//  Merge_Strings_Alternately.swift
//  LeetCode_Swift
//
//  Created by Yunju Yang on 10/7/2024.
//

import Foundation

// 1768. Merge Strings Alternately : https://leetcode.com/problems/merge-strings-alternately
struct Merge_Strings_Alternately {
    func solution(_ word1: String, _ word2: String) -> String {
        var result = ""
        let minLength = min(word1.count, word2.count)
        
        for i in 0..<minLength {
            result += String(word1[word1.index(word1.startIndex, offsetBy: i)])
            result += String(word2[word2.index(word2.startIndex, offsetBy: i)])
        }
        
        if word1.count > minLength {
            result += String(word1[word1.index(word1.startIndex, offsetBy: minLength)...])
        } else if word2.count > minLength {
            result += String(word2[word2.index(word2.startIndex, offsetBy: minLength)...])
        }
        
        return result
    }
}
