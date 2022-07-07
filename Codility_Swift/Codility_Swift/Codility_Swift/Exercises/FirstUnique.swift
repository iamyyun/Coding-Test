//
//  FirstUnique.swift
//  Codility_Swift
//
//  Created by Yunju Yang on 2022/07/06.
//

import Foundation

// FirstUnique : https://app.codility.com/programmers/trainings/4/first_unique/
struct FirstUnique {
    func solution(A: [Int]) -> Int {
        
        var numDic: Dictionary<Int, Int> = [:]
        for num in A {
            if numDic.keys.contains(num) {
                numDic[num]! += 1
            } else {
                numDic[num] = 1
            }
        }
        
        var numArr = [Int]()
        let keyArr = numDic.keys
        for key in keyArr {
            if numDic[key] == 1 {
                numArr.append(key)
            }
        }
        
        var returnNum = -1
        var min = -1
        if numArr.count > 0 {
            for i in 0..<numArr.count {
                let num = numArr[i]
                if i == 0 {
                    min = A.firstIndex(of: num)!
                    returnNum = num
                } else {
                    let index = A.firstIndex(of: num)
                    if index! < min {
                        min = index!
                        returnNum = num
                    }
                }
            }
        }
        
        return returnNum
        
        
        
        
//        print("value: ", indexArr[indexArr.firstIndex(of: indexArr.min()!)!])
//
//        if indexArr.count == 0 {
//            return -1
//        } else {
//            return indexArr.first!
//        }
    }
}

