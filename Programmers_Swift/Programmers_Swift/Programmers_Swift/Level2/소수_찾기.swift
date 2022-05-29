//
//  소수_찾기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 소수 찾기 : https://programmers.co.kr/learn/courses/30/lessons/42839
struct 소수_찾기 {
    func solution(_ numbers:String) -> Int {
        let arr = numbers.map{ String($0) }
        var visited = Array(repeating: false, count: arr.count)
        var numbers = [Int]()   // 찾은 소수의 배열
        var number = ""
        
        func isDecimalNumber(_ number: Int) -> Bool {
            if number < 2 {
                return false
            }
            
            for i in 2..<number {
                if number%i == 0 {
                    return false
                }
            }
            return true
        }
        
        func dfs(_ depth: Int, _ string: String, _ count: Int) {
            if depth == count {
                // 소수인지 판별
                if let number = Int(string) {
                    if isDecimalNumber(number) && !numbers.contains(number) {
                        numbers.append(number)
                    }
                }
            } else {
                for i in 0..<arr.count {
                    if visited[i] == false {
                        number += arr[i]
                        visited[i] = true
                        dfs(depth+1, number, count)
                        visited[i] = false
                        number = string
                    }
                }
            }
        }
        
        for i in 1...arr.count {
            dfs(0, "", i)
        }
        
        print(numbers)
        return numbers.count
    }
}
