//
//  서울에서_김서방_찾기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 서울에서 김서방 찾기 : https://programmers.co.kr/learn/courses/30/lessons/12919
struct 서울에서_김서방_찾기 {
    func solution(_ seoul:[String]) -> String {
        for i in 0..<seoul.count {
            if seoul[i] == "Kim" {
                return "김서방은 \(i)에 있다"
            }
        }
        return ""
    }
}
