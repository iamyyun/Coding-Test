//
//  Apple_and_Orange.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/07/03.
//

import Foundation

// Apple and Orange : https://www.hackerrank.com/challenges/apple-and-orange
struct Apple_and_Orange {
    func solution(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> [Int] {
        
        var result = [Int]()
//        let houseArr = Array(s...t)
        let appleArr = apples.map { $0 + a }
        let orangeArr = oranges.map { $0 + b }
        
        result.append(appleArr.filter{ $0 >= s && $0 <= t}.count)
        result.append(orangeArr.filter{ $0 >= s && $0 <= t}.count)
//        result.append(appleArr.filter{houseArr.contains($0)}.count)
//        result.append(orangeArr.filter{houseArr.contains($0)}.count)
        
        return result
    }
}
