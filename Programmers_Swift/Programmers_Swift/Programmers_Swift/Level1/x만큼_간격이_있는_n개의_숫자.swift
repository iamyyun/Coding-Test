//
//  x만큼_간격이_있는_n개의_숫자.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/10.
//

import Foundation

// x만큼 간격이 있는 n개의 숫자 : https://school.programmers.co.kr/learn/courses/30/lessons/12954
struct x만큼_간격이_있는_n개의_숫자 {
    func solution(_ x:Int, _ n:Int) -> [Int64] {
        var resultArr = [Int64]()
        for i in 0..<n {
            resultArr.append(Int64(x*(i+1)))
        }
        
        return resultArr
    }
}
