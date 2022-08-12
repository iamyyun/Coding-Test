//
//  자연수_뒤집어_배열로_만들기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/09.
//

import Foundation

// 자연수 뒤집어 배열로 만들기 : https://school.programmers.co.kr/learn/courses/30/lessons/12932
struct 자연수_뒤집어_배열로_만들기 {
    func solution(_ n:Int64) -> [Int] {
        let arr = String(n).map{ String($0) }
        return arr.reversed().map { Int($0)! }
    }
}
