//
//  Reverse_Vowels_of_a_String.swift
//  LeetCode_Swift
//
//  Created by Yunju Yang on 4/8/2024.
//

import Foundation

// 345.Reverse Vowels of a String : https://leetcode.com/problems/reverse-vowels-of-a-string
struct Reverse_Vowels_of_a_String {
    func solution(_ s: String) -> String {
        var result = ""
        var orgVowels = [String]()
        let vowels = ["a","e","i","o","u","A","E","I","O","U"]
        
        let sArr = s.map { String($0) }
        for str in sArr {
            if vowels.contains(str) { orgVowels.append(str) }
        }
        
        for str in sArr {
            if vowels.contains(str) {
                result.append(orgVowels.popLast()!)
            } else {
                result.append(str)
            }
        }
        
        return result
    }
}
