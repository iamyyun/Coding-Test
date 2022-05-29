//
//  스킬트리.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 스킬트리 : https://programmers.co.kr/learn/courses/30/lessons/49993
struct 스킬트리 {
    func solution(_ skill:String, _ skill_trees:[String]) -> Int {
        var result = 0
        
        for trees in skill_trees {
            var arr = Array(skill)
            var str = arr.removeFirst()
            let treeArr = Array(trees)
            
            var visited = [Character]()
            for i in 0..<treeArr.count {
                let tree = treeArr[i]
                if str == tree {
                    if arr.count > 0 {
                        str = arr.removeFirst()
                    } else {
                        visited = [Character]()
                        result += 1
                        break
                    }
                    
                } else {
                    visited.append(tree)
                }
                
                let intersection = Set(arr).intersection(Set(visited))
                if intersection.count > 0 {
                    break;
                }
                
                if i == treeArr.count-1 {
                    visited = [Character]()
                    result += 1
                }
            }
        }
        
        return result
    }
}
