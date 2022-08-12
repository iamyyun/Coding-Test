//
//  이상한_문자_만들기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/09.
//

import Foundation

// 이상한 문자 만들기 : https://school.programmers.co.kr/learn/courses/30/lessons/12930
struct 이상한_문자_만들기 {
    func solution(_ s:String) -> String {
        let arr = s.map { String($0) }
        
        var strArr = [String]()
        var newArr = [String]()
        var isString = false
        for i in 0..<arr.count {
            let str = arr[i]
            if str == " " {
                if isString {
                    isString = false
                    for i in 0..<strArr.count {
                        if i%2 == 0 {
                            newArr.append(strArr[i].uppercased())
                        } else {
                            newArr.append((strArr[i].lowercased()))
                        }
                    }
                    strArr = [String]()
                }
                newArr.append(str)
            } else {
                if !isString {
                    isString = true
                }
                strArr.append(str)
            }
            
            if i == arr.count-1 {
                for i in 0..<strArr.count {
                    if i%2 == 0 {
                        newArr.append(strArr[i].uppercased())
                    } else {
                        newArr.append((strArr[i].lowercased()))
                    }
                }
            }
        }
        
        return newArr.joined()
    }
}
