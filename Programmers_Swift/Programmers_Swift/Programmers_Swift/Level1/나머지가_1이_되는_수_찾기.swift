//
//  나머지가_1이_되는_수_찾기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/10.
//

import Foundation

// 나머지가 1이 되는 수 찾기 : https://school.programmers.co.kr/learn/courses/30/lessons/87389
struct 나머지가_1이_되는_수_찾기 {
    func solution(_ n:Int) -> Int {
        var result = 0
        for i in 1...n {
            if n%i == 1 {
                result = i
                break
            }
        }

        return result
    }
}
