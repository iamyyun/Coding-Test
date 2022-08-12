//
//  콜라츠_추측.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/10.
//

import Foundation

// 콜라츠 추측 : https://school.programmers.co.kr/learn/courses/30/lessons/12943
struct 콜라츠_추측 {
    func solution(_ num:Int) -> Int {
        var count = 0
        var number = num
        while number != 1 {
            if number%2 == 0 {
                number = number/2
            } else {
                number = (number*3)+1
            }
            count += 1
            if count == 500 {
                count = -1
                break
            }
            if number == 1 {
                break
            }
        }

        return count
    }
}
