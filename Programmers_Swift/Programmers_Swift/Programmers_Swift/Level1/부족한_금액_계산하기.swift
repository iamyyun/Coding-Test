//
//  부족한_금액_계산하기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/09.
//

import Foundation

// 부족한 금액 계산하기 : https://school.programmers.co.kr/learn/courses/30/lessons/82612
struct 부족한_금액_계산하기 {
    func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64 {
        
        var total = 0
        for i in 1...count {
            total += (price * i)
        }
        if total > money {
            return Int64(total-money)
        }
        
        return 0
    }
}
