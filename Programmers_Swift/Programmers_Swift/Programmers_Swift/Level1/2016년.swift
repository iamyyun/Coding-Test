//
//  2016년.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 2016년 : https://programmers.co.kr/learn/courses/30/lessons/12901
struct year2016 {
    func solution(_ a:Int, _ b:Int) -> String {
        let day = ["MON","TUE","WED","THU","FRI","SAT","SUN"]
        let days = [31,29,31,30,31,30,31,31,30,31,30,31]

        var dayCount = 4
        for i in 0..<a-1 {
            dayCount += days[i]
        }
        
        dayCount += b-1
        
        return day[dayCount%7]
    }
}
