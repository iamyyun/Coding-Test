//
//  튜플.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 튜플 : https://programmers.co.kr/learn/courses/30/lessons/64065
struct 튜플 {
    func solution(_ s:String) -> [Int] {
        var s = s
        var answer: [Int] = []
        s = s.replacingOccurrences(of: "{", with: "")
        let tupleStrings = s.components(separatedBy: "},").map({$0.replacingOccurrences(of: "}", with: "")})
        
        let tuples = tupleStrings.map({ tupleString -> [String] in
                                tupleString.components(separatedBy: ",") })
        
        let sortedTuples = tuples.sorted(by: { $0.count < $1.count })
        
        sortedTuples.forEach({ tuple in
            tuple.forEach({ num in
                let number = Int(num)!
                if !answer.contains(number) {
                    answer.append(number)
                }
            })
        })
        
        return answer
    }
}
