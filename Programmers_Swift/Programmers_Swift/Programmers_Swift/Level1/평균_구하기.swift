//
//  평균_구하기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 평균 구하기 : https://programmers.co.kr/learn/courses/30/lessons/12944
struct 평균_구하기 {
    func solution(_ arr:[Int]) -> Double {
        let count: Double = Double(arr.count)
        var total: Double = 0
        for number in arr {
            total += Double(number)
        }
        
        var average: Double = 0
        average = total/count
        return average
        
        // return Double(arr.reduce(0,+))/Double(arr.count)
    }
}
