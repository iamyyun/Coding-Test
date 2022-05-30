//
//  Maximum_Element.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/05/29.
//

import Foundation

// Maximum Element : https://www.hackerrank.com/challenges/maximum-element
struct Maximum_Element {
    func solution(operations: [String]) -> [Int] {
        var stack = [Int]()
        var maxStack = [Int]()
        for str in operations {
            let arr = str.components(separatedBy: " ")
            let query: Int = Int(arr[0])!
            if query == 1 {
                let element: Int = Int(arr[1])!
                stack.append(element)
            } else if query == 2 {
                if stack.count > 0 {
                    stack.removeLast()
                }
            } else if query == 3 {
                maxStack.append(stack.max()!)
            }
        }
        
        return maxStack
    }
}
