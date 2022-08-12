//
//  문자열_내림차순으로_배치하기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/09.
//

import Foundation

// 문자열 내림차순으로 배치하기 : https://school.programmers.co.kr/learn/courses/30/lessons/12917
struct 문자열_내림차순으로_배치하기 {
    func solution(_ s:String) -> String {
        let arr = s.map { String($0) }
        var upperArr = [String]()
        var lowerArr = [String]()
        for str in arr {
            if str == str.uppercased() {
                upperArr.append(str)
            }
            if str == str.lowercased() {
                lowerArr.append(str)
            }
        }
        upperArr = upperArr.sorted().reversed()
        lowerArr = lowerArr.sorted().reversed()
        return lowerArr.joined()+upperArr.joined()
    }
}
