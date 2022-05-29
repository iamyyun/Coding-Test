//
//  괄호_회전하기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 괄호 회전하기 : https://programmers.co.kr/learn/courses/30/lessons/76502
struct 괄호_회전하기 {
    func solution(_ s:String) -> Int {
        let open = ["[", "{", "("], close = ["]", "}", ")"]
        var result = 0
        var array = s.map{ String($0) }
        
        for _ in array {
            let str = array.removeFirst()
            array.append(str)
            
            var check = [String]()
            for arr in array {
                if check.count == 0 {
                    check.append(arr)
                } else {
                    if open.contains(arr) {
                        check.append(arr)
                    }
                    if close.contains(arr) {
                        for k in 0..<close.count {
                            if arr == close[k] && check[check.count-1] == open[k] {
                                check.removeLast()
                            }
                        }
                    }
                }
            }
            
            if check.count == 0 {
                result += 1
            }
        }
        
        return result
    }
}
