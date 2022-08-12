//
//  문자열_압축.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/13.
//

import Foundation

// 문자열 압축 : https://school.programmers.co.kr/learn/courses/30/lessons/60057
struct 문자열_압축 {
    func solution(_ s:String) -> Int {
        func getStrSizeArr(size: Int) -> [String] {
            let arr = s.map { $0 }
            let element = stride(from: 0, to: s.count, by: size).map {
                Array(arr[$0..<Swift.min($0+size, s.count)])
            }
            return element.compactMap{ String($0) }
        }
        
        var shortArr = [Int]()
            
        let max = s.count/2+1
        shortArr.append(s.count)
        for i in 1...max {
            let splitArr = getStrSizeArr(size: i)
            var sameStr = ""
            var sameArr = [String]()
            for i in 0..<splitArr.count {
                let split = splitArr[i]
                if sameArr.count == 0 { sameArr.append(split) }
                else {
                    if sameArr.last == split {
                        if i == splitArr.count-1 {
                            sameArr.append(split)
                            sameStr += "\(sameArr.count)\(sameArr[0])"
                        } else {
                            sameArr.append(split)
                        }
                    } else {
                        if sameArr.count == 1 {
                            sameStr += "\(sameArr[0])"
                        } else {
                            sameStr += "\(sameArr.count)\(sameArr[0])"
                        }

                        if i == splitArr.count-1 {
                            sameStr += split
                        } else {
                            sameArr = [String]()
                            sameArr.append(split)
                        }
                    }
                }
            }
            if sameStr.count > 0 { shortArr.append(sameStr.count) }
        }

        return shortArr.min()!
    }
}
