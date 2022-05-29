//
//  짝지어_제거하기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 짝지어 제거하기 : https://programmers.co.kr/learn/courses/30/lessons/12973
struct 짝지어_제거하기 {
    func solution(_ s: String) -> Int {
        var arr = [Character]()
        for str in s {
            if arr.count == 0 {
                arr.append(str)
            } else {
                if arr[arr.count-1] == str {
                    arr.removeLast()
                } else {
                    arr.append(str)
                }
            }
        }
        
        return arr.count == 0 ? 1 : 0
    }
}
