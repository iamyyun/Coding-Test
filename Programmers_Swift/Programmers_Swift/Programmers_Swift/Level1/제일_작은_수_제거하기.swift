//
//  제일_작은_수_제거하기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/09.
//

import Foundation

// 제일 작은 수 제거하기 : https://school.programmers.co.kr/learn/courses/30/lessons/12935
struct 제일_작은_수_제거하기 {
    func solution(_ arr:[Int]) -> [Int] {
        var newArr = arr
        if newArr.count == 1 {
            return [-1]
        }
        
        let num: Int = newArr.min()!
        let index = newArr.firstIndex(of: num)
        newArr.remove(at: index!)
        return newArr
    }
}
