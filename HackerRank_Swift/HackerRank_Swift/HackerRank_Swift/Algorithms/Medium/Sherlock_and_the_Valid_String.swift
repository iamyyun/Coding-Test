//
//  Sherlock_and_the_Valid_String.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/05/26.
//

import Foundation

// Sherlock and the Valid String : https://www.hackerrank.com/challenges/sherlock-and-valid-string
struct Sherlock_and_the_Valid_String {
    func solution(s: String) -> String {
        
        var result: String = "NO"
        var strDic: Dictionary<String,Int> = [:]
        let arr = s.map{ String($0) }
        for str in arr {
            if strDic.keys.contains(str) {
                strDic[str]? += 1
            } else {
                strDic[str] = 1
            }
        }
        
        var valueDic: Dictionary<Int,Int> = [:]
        for value in strDic.values {
            if valueDic.keys.contains(value) {
                valueDic[value]? += 1
            } else {
                valueDic[value] = 1
            }
        }
        
        let keyArr = Array(valueDic.keys)
        if keyArr.count == 1 {
            result = "YES"
        } else if keyArr.count == 2 {
            if valueDic.values.contains(1) {
                if abs(keyArr[0]-keyArr[1]) > 1 {
                    if valueDic.keys.contains(1) {
                        if valueDic[1] == 1 {
                            result = "YES"
                        }
                    }
                } else {
                    result = "YES"
                }
            }
        }
        
        return result
    }
}
