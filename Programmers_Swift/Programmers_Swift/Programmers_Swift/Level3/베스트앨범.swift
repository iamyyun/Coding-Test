//
//  베스트앨범.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 베스트앨범 : https://programmers.co.kr/learn/courses/30/lessons/42579
struct 베스트앨범 {
    func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
        
        var genreDic: Dictionary<String, Int> = [:]
        for i in 0..<genres.count {
            let genreName: String = genres[i]
            let genrePlays: Int = plays[i]
            if genreDic.keys.contains(genreName) {
                genreDic[genreName]? += genrePlays
            } else {
                genreDic[genreName] = genrePlays
            }
        }
        
        let sortedDic = genreDic.sorted { $0.1 > $1.1 }
        
        var album = [Int]()
        for genre in sortedDic {
            var indexArr: [Dictionary<Int, Int>] = []
            for i in 0..<genres.count {
                if genre.key == genres[i] {
                    indexArr.append([plays[i]:i])
                }
            }
            
            let sortedArr = indexArr.sorted { $0.first!.key > $1.first!.key }
            for j in 0..<sortedArr.count {
                if j == 2 {
                    break
                }
                let count = (sortedArr[j].first?.value)!
                album.append(count)
            }
        }
        
        return album
    }
}
