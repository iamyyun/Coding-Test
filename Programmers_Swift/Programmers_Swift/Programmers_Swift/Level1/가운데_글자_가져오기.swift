//
//  가운데_글자_가져오기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 가운데 글자 가져오기 : https://programmers.co.kr/learn/courses/30/lessons/12903
struct 가운데_글자_가져오기 {
    func solution(_ s:String) -> String {
        let arr = Array(s)
        let index = s.count/2
        if (s.count % 2) == 0 {
            return String(arr[index-1])+String(arr[index])
        } else {
            
            return String(arr[index])
        }
    }
}
