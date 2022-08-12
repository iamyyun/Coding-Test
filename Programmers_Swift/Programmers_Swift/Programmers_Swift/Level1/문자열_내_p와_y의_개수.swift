//
//  문자열_내_p와_y의_개수.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/09.
//

import Foundation

// 문자열 내 p와 y의 개수 : https://school.programmers.co.kr/learn/courses/30/lessons/12916
struct 문자열_내_p와_y의_개수 {
    func solution(_ s:String) -> Bool {
        let arr = s.map { String($0).lowercased() }
        var pCount = 0
        var yCount = 0
        
        for str in arr {
            if str == "p" { pCount += 1 }
            if str == "y" { yCount += 1 }
        }
        
        if pCount == yCount {
            return true
        } else {
            return false
        }
    }
}
