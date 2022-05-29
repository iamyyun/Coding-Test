//
//  타겟_넘버.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 타겟 넘버 : https://programmers.co.kr/learn/courses/30/lessons/43165
struct 타겟_넘버 {
    func solution(_ numbers:[Int], _ target:Int) -> Int {
        var count = 0
        
        func dfs(index: Int, sum: Int) {
            if index == numbers.count {
                if sum == target {
                    count += 1
                }
                return
            }
            dfs(index: index+1, sum: sum+numbers[index])
            dfs(index: index+1, sum: sum-numbers[index])
        }
        
        dfs(index: 0, sum: 0)
        
        return count
    }
}
    

//var count = 0
//var numbersCopy: [Int] = []
//var targetCopy: Int = 0
//
//func dfs(_ index:Int, _ sum:Int) {
//    if index == numbersCopy.count {
//        if sum == targetCopy {
//            count += 1
//        }
//        return
//    }
//    dfs(index+1, sum+numbersCopy[index])
//    dfs(index+1, sum-numbersCopy[index])
//}
//
//func solution(_ numbers:[Int], _ target:Int) -> Int {
//    numbersCopy = numbers
//    targetCopy = target
//
//    dfs(0, 0)
//
//    return count
//}
