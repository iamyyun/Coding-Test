//
//  짝수와_홀수.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 짝수와 홀수 : https://programmers.co.kr/learn/courses/30/lessons/12937
struct 짝수와_홀수 {
    func solution(_ num:Int) -> String {
        if num%2 == 0 {
            return "Even"
        } else {
            return "Odd"
        }
        
        //  return num % 2 == 0 ? "Even" : "Odd"
    }
}
