//
//  이중우선순위큐.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 이중우선순위큐 : https://programmers.co.kr/learn/courses/30/lessons/42628
struct 이중우선순위큐 {
    func solution(_ operations:[String]) -> [Int] {
        var queue = [Int]()
        for operation in operations {
            let opArr = operation.components(separatedBy: " ")
            if opArr[0] == "I" {
                queue.append(Int(opArr[1])!)
            } else {
                if queue.count > 0 {
                    if opArr[1] == "1" {
                        queue.removeLast()
                    } else if opArr[1] == "-1" {
                        queue.removeFirst()
                    }
                }
            }
            queue = queue.sorted(by: <)
        }
        
        var result = [Int]()
        if queue.count == 0 {
            result = [0,0]
        } else {
            result.append(queue.last!)
            result.append(queue.first!)
        }
        
        return result
    }
}
