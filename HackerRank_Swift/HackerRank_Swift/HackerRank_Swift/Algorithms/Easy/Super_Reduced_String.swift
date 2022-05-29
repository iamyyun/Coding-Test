//
//  Super_Reduced_String.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/05/25.
//

import Foundation

// Super Reduced String : https://www.hackerrank.com/challenges/reduced-string
struct Super_Reduced_String {
    func solution(s: String) -> String {
        var result: String = ""
        var sorted = s.map { String($0) }
        
        while true {
            result = ""
            var same: Bool = false
            var count = 0
            var previous: String = ""
            for i in 0..<sorted.count {
                let num = sorted[i]
                if i == 0 {
                    previous = num
                    count += 1
                } else {
                    if previous == num {
                        same = true
                        count += 1
                    } else {
                        if (count%2) == 1 {
                            result = (result + previous)
                        }
                        previous = num
                        count = 1
                    }
                }
                
                if i == sorted.count-1 {
                    if (count%2) == 1 {
                        result = (result + previous)
                    }
                }
            }
            
            if result.isEmpty { break }
            
            if same {
                sorted = result.map{ String($0) }
                continue
            } else {
                break
            }
            
        }
        
        return result.isEmpty ? "Empty String":result
    }
}
