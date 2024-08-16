//
//  Greatest_Common_Divisor_of_Strings.swift
//  LeetCode_Swift
//
//  Created by Yunju Yang on 13/7/2024.
//

import Foundation

// 1071. Greatest Common Divisor of Strings : https://leetcode.com/problems/greatest-common-divisor-of-strings
struct Greatest_Common_Divisor_of_Strings {
    func solution(_ str1: String, _ str2: String) -> String {
        func gcd(_ a: Int, _ b: Int) -> Int {
            if b == 0 { return a }
            return gcd(b, a%b)
        }
        
        guard (str1+str2) == (str2+str1) else { return "" }
        
        let gcd = gcd(str1.count, str2.count)
        return String(str1.prefix(gcd))
    }
}
