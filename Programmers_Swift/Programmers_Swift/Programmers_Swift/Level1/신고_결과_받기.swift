//
//  신고_결과_받기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/12.
//

import Foundation

// 신고 결과 받기 : https://school.programmers.co.kr/learn/courses/30/lessons/92334
struct 신고_결과_받기 {
    func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
        var userDic = Dictionary<String, [String]>(uniqueKeysWithValues: id_list.map {($0, [])})    // 유저ID별로 신고한 ID
        var reportDic = Dictionary(uniqueKeysWithValues: id_list.map {($0, 0)})    // 신고당한 횟수
        for rep in report {
            let reportArr = rep.components(separatedBy: " ")
            if !userDic[reportArr[0]]!.contains(reportArr[1]) {
                userDic[reportArr[0]]?.append(reportArr[1])
                reportDic[reportArr[1]]! += 1
            }
        }
        
        var resultArr = [Int]()
        for id in id_list {
            let reportArr: [String] = userDic[id]!
            if reportArr.count == 0 {
                resultArr.append(0)
            } else {
                var count = 0
                for report in reportArr {
                    if reportDic[report]! >= k {
                        count += 1
                    }
                }
                resultArr.append(count)
            }
        }
        
        return resultArr
    }
}
