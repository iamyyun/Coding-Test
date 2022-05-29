//
//  단어_변환.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 단어 변환 : https://programmers.co.kr/learn/courses/30/lessons/43163
struct 단어_변환 {
    func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
        var visited = Array(repeating: false, count: words.count)
        var path = 0
        
        if !words.contains(target) {
            return 0
        }
        
        var queue = [String]()
        queue.append(begin)
        
        while !queue.isEmpty {
            let now = queue.popLast()!
            if now == target {
                break
            }
            
            path += 1
            for i in 0..<words.count {
                if isDifferent(now, words[i]), visited[i] == false {
                    queue.append(words[i])
                    visited[i] = true
                }
            }
        }
        
        return path
    }

    func isDifferent(_ begin: String, _ word: String) -> Bool {
        if begin.count != word.count {
            return false
        }
        
        var difCount = 0
        let beginArr = Array(begin)
        let wordArr = Array(word)
        
        for i in 0..<beginArr.count {
            if beginArr[i] != wordArr[i] {
                difCount += 1
            }
        }
        
        if difCount > 1 {
            return false
        }
        
        return true
    }
}
