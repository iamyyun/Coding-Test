//
//  Time_Conversion.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/05/25.
//

import Foundation

// Time Conversion : https://www.hackerrank.com/challenges/time-conversion
struct Time_Conversion {
    func solution(s: String) -> String {
        var timeStr = s.prefix(8)
        let ampmStr = s.suffix(2)
        var hour = Int(s.prefix(2))
        
        if ampmStr == "AM" {
            if hour == 12 {
                timeStr = "00"+timeStr.suffix(6)
            }
        } else if ampmStr == "PM" {
            if hour! < 12 {
                hour = hour!+12
                timeStr = String(hour!)+timeStr.suffix(6)
            }
        }
        
        return String(timeStr)
    }
}
