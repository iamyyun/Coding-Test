//
//  실패율.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/10.
//

import Foundation

// 실패율 : https://school.programmers.co.kr/learn/courses/30/lessons/42889
struct 실패율 {
    func solution(_ N:Int, _ stages:[Int]) -> [Int] {
        var arriveArr = Array(repeating: 0, count: N+1)
        var failArr = Array(repeating: 0, count: N)
        for stage in stages {
            for i in 0..<stage {
                arriveArr[i] += 1
            }
            if stage <= N {
                failArr[stage-1] += 1
            }
        }

        var rateArr = Array(repeating: Float(0), count: N)
        for j in 0..<N {
            rateArr[j] = Float(failArr[j])/Float(arriveArr[j])
        }

        let sorted = rateArr.enumerated().sorted(by: {$0.element > $1.element})

        return sorted.map {($0.offset)+1}
    }
}
