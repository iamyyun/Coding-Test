//
//  여행경로.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 여행경로 : https://programmers.co.kr/learn/courses/30/lessons/43164
struct 여행경로 {
    func solution(_ tickets:[[String]]) -> [String] {
        var visited = Array(repeating: false, count: tickets.count)
        let sortedTickets = tickets.sorted(by: { $0[1] < $1[1] })
        var path = [String]()
        
        func dfs(_ airport: String) {
            if path.count == sortedTickets.count {
                path.append(airport)
                return
            }
            
            for i in 0..<sortedTickets.count {
                let src = sortedTickets[i][0]
                let dst = sortedTickets[i][1]
                
                if airport == src, visited[i] == false {
                    visited[i] = true
                    path.append(src)
                    dfs(dst)
                    
                    if path.count == sortedTickets.count + 1 {
                        return
                    }
                    
                    path.removeLast()
                    visited[i] = false
                }
            }
        }
        
        dfs("ICN")
        
        return path
    }
}
