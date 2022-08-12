//
//  문자열_내_마음대로_정렬하기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/08.
//

import Foundation

// 문자열 내 마음대로 정렬하기 : https://school.programmers.co.kr/learn/courses/30/lessons/12915
struct 문자열_내_마음대로_정렬하기 {
    func solution(_ strings:[String], _ n:Int) -> [String] {
        var orderDic: Dictionary<String, [Int]> = [:]
        var orderArr = [String]()
        for i in 0..<strings.count {
            let str = strings[i]
            let strArr = str.map { String($0) }
            if orderDic.keys.contains(strArr[n]) {
                orderDic[strArr[n]]?.append(i)
            } else {
                orderDic[strArr[n]] = [i]
            }
        }
        let ascendArr = orderDic.keys.sorted()
        for ascend in ascendArr {
            let indexArr: [Int] = orderDic[ascend]!
            var strArr = [String]()
            for index in indexArr {
                strArr.append(strings[index])
            }
            strArr = strArr.sorted()
            for str in strArr {
                orderArr.append(str)
            }

        }
        return orderArr
    }
}
