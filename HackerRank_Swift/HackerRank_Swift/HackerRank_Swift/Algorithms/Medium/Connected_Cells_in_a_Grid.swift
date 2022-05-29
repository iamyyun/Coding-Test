//
//  Connected_Cells_in_a_Grid.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/05/28.
//

import Foundation

// Connected Cells in a Grid : https://www.hackerrank.com/challenges/connected-cell-in-a-grid
struct Connected_Cells_in_a_Grid {
    func solution(matrix: [[Int]]) -> Int {
        // 위아래 좌우 대각선 검색하도록 좌표 설정
        let dx: [Int] = [0,0,-1,1,-1,1,-1,1]
        let dy: [Int] = [-1,1,0,0,-1,-1,1,1]
        
        let w = matrix[0].count
        let h = matrix.count
        
        var needVisit = [[Int]]()
        var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: matrix[0].count), count: matrix.count)
        var count: Int = 0  // 전체 region의 갯수
        var isCellsCnt = 0  // 하나의 region에 들어가는 cell의 갯수
        var isRegions = [Int]()   // region 배열
        
        func dfs(_ x: Int, _ y: Int) {
            if needVisit.count > 0 {
                for i in 0..<dx.count{
                    let nx = x + dx[i]
                    let ny = y + dy[i]
                    if 0 <= ny && ny < h && 0 <= nx && nx < w {
                        
                        // 인접 cell 배열에 추가
                        if !visited[ny][nx] && matrix[ny][nx] == 1 {
                            visited[ny][nx] = true
                            isCellsCnt += 1
                            
                            needVisit.append([nx,ny])
                        }
                    } else {
                        continue
                    }
                }
            }
            
            if needVisit.count > 1 {
                needVisit.removeFirst()
                
                let coordinate = needVisit[0]
                dfs(coordinate[0], coordinate[1])
            } else {
                needVisit.removeFirst()
            }
        }
        
        for i in 0..<h {
            for j in 0..<w {
                if matrix[i][j] == 1 && !visited[i][j] {
                    visited[i][j] = true
                    isCellsCnt += 1     // 하나의 region에 포함되는 cell count 추가
                    
                    needVisit.append([j,i])
                    dfs(j,i)
                    count += 1
                    
                    isRegions.append(isCellsCnt)
                    isCellsCnt = 0
                }
            }
        }
        
        return isRegions.max()!
    }
}
