//
//  최댓값과_최솟값.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 최댓값과 최솟값 : https://programmers.co.kr/learn/courses/30/lessons/12939
struct 최댓값과_최솟값 {
    func solution(_ s:String) -> String {
        let arr = s.components(separatedBy: " ")
        var numArr: [Int] = []
        for i in arr {
            guard let num = Int(i) else { return " " }
            numArr.append(num)
        }
        return "\(numArr.min()!) \(numArr.max()!)"
    }
}
