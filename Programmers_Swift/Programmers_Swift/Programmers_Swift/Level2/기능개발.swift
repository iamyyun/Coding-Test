//
//  기능개발.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 기능개발 : https://programmers.co.kr/learn/courses/30/lessons/42586
struct 기능개발 {
    func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
        var result = [Int]()
        var days = [Int](repeating: 0, count: progresses.count)
        for i in 0..<progresses.count {
            var progress = progresses[i]
            while progress < 100 {
                days[i] += 1
                progress += speeds[i]
            }
        }
        
        var checkDay = 0
        for k in 0..<days.count {
            if k == 0 {
                result.append(1)
            } else {
                if days[checkDay] >= days[k] {
                    result[result.count-1] += 1
                } else {
                    checkDay = k
                    result.append(1)
                }
            }
        }
        
        return result
    }
}
