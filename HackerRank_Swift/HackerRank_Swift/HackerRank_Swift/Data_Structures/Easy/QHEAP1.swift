//
//  QHEAP1.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/05/29.
//

import Foundation

// QHEAP1 : https://www.hackerrank.com/challenges/qheap1
struct QHEAP1 {
    func solution(operations: [String]) -> [Int] {
        var minimumArr = [Int]()
        var qheap = [Int]()
        
        for str in operations {
            let arr = str.components(separatedBy: " ")
            let query: Int = Int(arr[0])!
            if query == 1 {
                let element: Int = Int(arr[1])!
                qheap.append(element)
            } else if query == 2 {
                let element: Int = Int(arr[1])!
                let index = qheap.firstIndex(of: element)!
                qheap.remove(at: index)
            } else if query == 3 {
                minimumArr.append(qheap.min()!)
            }
        }
        
        return minimumArr
    }
}
