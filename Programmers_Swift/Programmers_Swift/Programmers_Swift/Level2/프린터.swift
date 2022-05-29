//
//  프린터.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 프린터 : https://programmers.co.kr/learn/courses/30/lessons/42587
struct 프린터 {
    func solution(_ priorities:[Int], _ location:Int) -> Int {
        var priority = priorities
        var index = location
        var result = 0
        
        while true {
            if priority.first == priority.max() {
                priority.removeFirst()
                result += 1
                
                if index == 0 {
                    break
                } else {
                    index -= 1
                }
            } else {
                let object = priority.removeFirst()
                priority.append(object)
                
                if index == 0 {
                    index = priority.count-1
                } else {
                    index -= 1
                }
            }
        }
        
        return result
    }
}
