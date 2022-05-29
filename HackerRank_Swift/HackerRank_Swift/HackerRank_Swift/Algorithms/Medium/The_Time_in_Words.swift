//
//  The_Time_in_Words.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/05/26.
//

import Foundation

// The Time in Words : https://www.hackerrank.com/challenges/the-time-in-words
struct The_Time_in_Words {
    func solution(h: Int, m: Int) -> String {
        var result: String = ""
        let hourArr = ["zero","one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve"]
        let minuteArr = ["zero","one minute","two minutes","three minutes","four minutes","five minutes","six minutes","seven minutes","eight minutes","nine minutes","ten minutes","eleven minutes","twelve minutes","thirteen minutes","fourteen minutes","quarter","sixteen minutes","seventeen minutes","eighteen minutes","nineteen minutes","twenty minutes","twenty one minutes","twenty two minutes","twenty three minutes","twenty four minutes","twenty five minutes","twenty six minutes","twenty seven minutes","twenty eight minutes","twenty nine minutes","half"]
        
        var hour: String = ""
        var minute: String = ""
        
        if m == 00 {
            hour = hourArr[h]
            minute = "o' clock"
            result = hour + " " + minute
        } else if m <= 30 {
            hour = hourArr[h]
            minute = minuteArr[m]
            result = minute + " past " + hour
        } else {
            hour = hourArr[h+1]
            minute = minuteArr[60-m]
            result = minute + " to " + hour
        }
        
        return result
    }
}
