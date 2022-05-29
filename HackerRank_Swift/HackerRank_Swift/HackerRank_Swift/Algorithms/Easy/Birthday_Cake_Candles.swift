//
//  Birthday_Cake_Candles.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/05/25.
//

import Foundation

// Birthday Cake Candles : https://www.hackerrank.com/challenges/birthday-cake-candles
struct Birthday_Cake_Candles {
    func solution(candles: [Int]) -> Int {
        var count: Int = 0
        let array = candles.sorted(by: >)
        var number = array[0]
        for num in array {
            if number == num {
                count += 1
            }
            if number > num { break }
            
            number = num
        }
        
        return count
    }
}
