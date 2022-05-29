//
//  최솟값_만들기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 최솟값 만들기 : https://programmers.co.kr/learn/courses/30/lessons/12941
struct 최솟값_만들기 {
    func solution(_ A:[Int], _ B:[Int]) -> Int {
        var arrayA = A.sorted()
        var arrayB = B.sorted()
        var sum = 0
        
        for _ in 0..<arrayA.count {
            sum += (arrayA.removeFirst() * arrayB.removeLast())
        }
        
        return sum
    }
}
