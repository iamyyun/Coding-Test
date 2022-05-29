//
//  두_정수_사이의_합.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 두 정수 사이의 합 : https://programmers.co.kr/learn/courses/30/lessons/12912
struct 두_정수_사이의_합 {
    func solution(_ a:Int, _ b:Int) -> Int64 {
        var total = 0
        
        for i in (a<b ? a...b : b...a) {
            total += i
        }
        
        return Int64(total)
        
        // return Int64((a<b ? a...b : b...a).reduce(0, +))
    }
}
