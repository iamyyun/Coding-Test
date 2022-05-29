//
//  디스크_컨트롤러.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 디스크 컨트롤러 : https://programmers.co.kr/learn/courses/30/lessons/42627
struct 디스크_컨트롤러 {
    func solution(_ jobs:[[Int]]) -> Int {
        
        let count = jobs.count
        var jobs = jobs.sorted(by: {$0[0] == $1[0] ? $0[1] < $1[1] : $0[0] < $1[0] })
        
        let first = jobs.removeFirst()
        var last = first[0] + first[1]
        var sum = first[1]
        jobs.sort(by: {$0[1] == $1[1] ? $0[0] < $1[0] : $0[1] < $1[1]})
        
        while jobs.count != 0 {
            var removeIndex = -1
            var next = [Int]()
            for i in 0..<jobs.count {
                next = jobs[i]
                if next[0] <= last {
                    removeIndex = i
                    break
                }
            }
            if removeIndex == -1 {
                next = jobs.removeFirst()
            }else {
                next = jobs.remove(at: removeIndex)
            }
            
            if next[0] > last {
                last = next[0]
            }
            last += next[1]
            sum += (last - next[0])
        }
        return sum / count
    }
}
