//
//  숫자_문자열과_영단어.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/09.
//

import Foundation

// 숫자 문자열과 영단어 : https://school.programmers.co.kr/learn/courses/30/lessons/81301
struct 숫자_문자열과_영단어 {
    func solution(_ s:String) -> Int {
        let numArr = ["0","1","2","3","4","5","6","7","8","9"]
        let wordArr = ["zero","one","two","three","four","five","six","seven","eight","nine"]
        var newArr = [String]()
        
        let arr = s.map { String($0) }
        var strArr = [String]()
        for i in 0..<arr.count {
            let str = arr[i]
            if numArr.contains(str) {
                newArr.append(str)
                continue
            }
            
            strArr.append(str)
            if wordArr.contains(strArr.joined()) {
                newArr.append(numArr[wordArr.firstIndex(of: strArr.joined())!])
                strArr = [String]()
            }
        }
        
        return Int(newArr.joined())!
    }
}
