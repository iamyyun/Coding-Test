//
//  주차_요금_계산.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/09.
//

import Foundation

// 주차 요금 계산 : https://school.programmers.co.kr/learn/courses/30/lessons/92341
struct 주차_요금_계산 {
    func solution(_ fees:[Int], _ records:[String]) -> [Int] {
        
        var recordDic: Dictionary<String, [String]> = [:]
        for record in records {
            let infoArr = record.components(separatedBy: " ")
            let carNum = infoArr[1]
            if recordDic.keys.contains(carNum) {
                recordDic[carNum]?.append(infoArr[0])
            } else {
                recordDic[carNum] = [infoArr[0]]
            }
        }
        
        var timeDic: Dictionary<String, Int> = [:]
        for carNum in recordDic.keys {
            var carTime = 0
            var timeArr = recordDic[carNum]
            if timeArr!.count%2 == 1 { timeArr?.append("23:59") }
            
            var previous = ""
            for time in timeArr!.reversed() {
                if previous.isEmpty { previous = time }
                else {
                    let prevArr = previous.components(separatedBy: ":").map { Int($0) }
                    let prevTime = (prevArr[0]!*60)+prevArr[1]!
                    let curArr = time.components(separatedBy: ":").map { Int($0) }
                    let curTime = (curArr[0]!*60)+curArr[1]!
                    let timeDiff = prevTime-curTime
                    
                    carTime += timeDiff
                    previous = ""
                }
            }
            
            timeDic[carNum] = carTime
        }
        
        var feeArr = [Int]()
        for car in timeDic.keys.sorted() {
            var fee = 0
            if timeDic[car]! < fees[0] {
                fee = fees[1]
            } else {
                fee = fees[1] + Int(ceil(Float(Float(timeDic[car]!-fees[0])/Float(fees[2])))) * fees[3]
            }
            feeArr.append(fee)
        }
        
        return feeArr
    }
}
