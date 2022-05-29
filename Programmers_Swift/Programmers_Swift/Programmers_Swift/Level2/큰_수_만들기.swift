//
//  큰_수_만들기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 큰 수 만들기 : https://programmers.co.kr/learn/courses/30/lessons/42883
struct 큰_수_만들기 {
    func solution(_ number:String, _ k:Int) -> String {
        let arr = number.map{String($0)}
        var stack = [String]()
        var count = 0
        
        for i in 0..<arr.count {
            while count < k && !stack.isEmpty && stack.last! < arr[i]{
                stack.removeLast()
                count += 1
            }
            
            if count >= k {
                stack.append(contentsOf: arr[i...])
                break
            } else {
                stack.append(arr[i])
            }
        }
        
        return String(stack.joined().prefix(number.count-k))
    }
}
