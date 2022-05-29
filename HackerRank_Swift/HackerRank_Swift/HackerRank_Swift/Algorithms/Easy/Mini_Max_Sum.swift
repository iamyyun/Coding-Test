//
//  Mini_Max_Sum.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/05/25.
//

import Foundation

// Mini-Max Sum : https://www.hackerrank.com/challenges/mini-max-sum
struct Mini_Max_Sum {
    func solution(arr: [Int]) -> [Int] {
        let min: Int = arr.min()!
        let max: Int = arr.max()!
        let total: Int = arr.reduce(0, +)
        
        print("\(total-max) \(total-min)")
        
        return [(total-max), (total-min)]
    }
}
