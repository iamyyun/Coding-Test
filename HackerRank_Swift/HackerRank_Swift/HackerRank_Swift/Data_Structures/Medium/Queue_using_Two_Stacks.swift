//
//  Queue_using_Two_Stacks.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/05/29.
//

import Foundation

// Queue using Two Stacks : https://www.hackerrank.com/challenges/queue-using-two-stacks
struct Queue_using_Two_Stacks {
    func solution(operations: [String]) -> [Int] {
        var frontQueue = [Int]()
        var queue = [Int]()
        
        for str in operations {
            let arr = str.components(separatedBy: " ")
            let query: Int = Int(arr[0])!
            if query == 1 {
                let element: Int = Int(arr[1])!
                queue.append(element)
            } else if query == 2 {
                if queue.count > 0 {
                    queue.removeFirst()
                }
            } else if query == 3 {
                frontQueue.append(queue.first!)
            }
        }
        
        return frontQueue
    }
}
