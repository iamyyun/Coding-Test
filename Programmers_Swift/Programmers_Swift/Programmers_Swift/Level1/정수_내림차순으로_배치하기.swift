//
//  정수_내림차순으로_배치하기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 정수 내림차순으로 배치하기 : https://programmers.co.kr/learn/courses/30/lessons/12933
struct 정수_내림차순으로_배치하기 {
    func solution(_ n:Int64) -> Int64 {
        let arr = Array(String(n).sorted().reversed())
        return Int64(String(arr))!
    //        return Int64(String(Array(String(n)).sorted { $0 > $1 }))!
    }
}
