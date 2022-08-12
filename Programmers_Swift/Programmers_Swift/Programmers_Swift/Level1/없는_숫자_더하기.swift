//
//  없는_숫자_더하기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/09.
//

import Foundation

// 없는 숫자 더하기 : https://school.programmers.co.kr/learn/courses/30/lessons/12934
struct 없는_숫자_더하기 {
    func solution(_ numbers:[Int]) -> Int {
        let numArr = [0,1,2,3,4,5,6,7,8,9]
        var newArr = [Int]()
        
        for num in numArr {
            if !numbers.contains(num) {
                newArr.append(num)
            }
        }
        
        return newArr.reduce(0, +)
    }
}
