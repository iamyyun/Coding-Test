//
//  직사각형_별찍기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 직사각형 별찍기 : https://programmers.co.kr/learn/courses/30/lessons/12969
struct 직사각형_별찍기 {
    func solution() {
        let a: Int = 3
        let b: Int = 5
        
        var str: String = ""
        for _ in 0..<b {
            for _ in 0..<a {
                str += "*"
            }
            str += "\n"
        }
        print(str)
        
    //        print(String(repeating: String(repeating: "*", count: a)+"\n", count: b))
    }
}
