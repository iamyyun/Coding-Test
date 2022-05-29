//
//  네트워크.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 네트워크 : https://programmers.co.kr/learn/courses/30/lessons/43162
struct 네트워크 {
    func solution(_ n:Int, _ computers:[[Int]]) -> Int {
        var visited: [Bool] = Array(repeating: false, count: n)
        var network: Int = 0
     
        func bfs(_ computer: Int) {
            visited[computer] = true
            
            for i in 0..<n {
                if computers[computer][i] == 1 && visited[i] == false {
                    bfs(i)
                }
            }
        }
     
        for i in 0..<n {
            if !visited[i] {
                network += 1
                bfs(i)
            }
        }
     
        return network
    }
}
