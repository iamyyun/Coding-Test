//
//  조이스틱.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 조이스틱 : https://programmers.co.kr/learn/courses/30/lessons/42860
struct 조이스틱 {
    func solution(_ name:String) -> Int {
        let name = Array(name)
        let aValue = Int(Character("A").asciiValue!)
        let zValue = Int(Character("Z").asciiValue!)

        var updown = 0
        var leftright = name.count-1

        for startIdx in 0..<name.count {
            updown += min(Int(name[startIdx].asciiValue!) - aValue, zValue - Int(name[startIdx].asciiValue!) + 1)

            var endIdx = startIdx + 1
            while endIdx < name.count && name[endIdx] == "A" {
                endIdx += 1
            }

            let moveFront = startIdx * 2 + (name.count - endIdx)
            let moveBack = (name.count - endIdx) * 2 + startIdx

            leftright = min(leftright, moveFront)
            leftright = min(leftright, moveBack)
        }

        return updown + leftright
    }
}
