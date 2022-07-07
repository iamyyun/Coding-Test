//
//  Balanced_Brackets.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/07/04.
//

import Foundation

// Balanced Brackets : https://www.hackerrank.com/challenges/balanced-brackets
struct Balanced_Brackets {
    func solution(s: String) -> String {
        
        let open = ["[", "{", "("], close = ["]", "}", ")"]
        let arr = s.map { String($0) }
        
        var result = "YES"
        var braArr = [Int]()
        for str in arr {
            if open.contains(str) {
                braArr.append(open.firstIndex(of: str)!)
            } else if close.contains(str) {
                let index = close.firstIndex(of: str)
                if braArr.last != index {
                    result = "NO"
                    break
                } else {
                    braArr.removeLast()
                }
            }
        }
        
        if braArr.count > 0 {
            result = "NO"
        }
        
        return result
    }
}
