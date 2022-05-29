//
//  모의고사.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 모의고사 : https://programmers.co.kr/learn/courses/30/lessons/42840
struct 모의고사 {
    func solution(_ answers:[Int]) -> [Int] {
        let student1 = [1,2,3,4,5]
        let student2 = [2,1,2,3,2,4,2,5]
        let student3 = [3,3,1,1,2,2,4,4,5,5]
        var count = [0,0,0]
        var result: [Int] = []
        
        for i in 0..<answers.count {
            let num1 = i % student1.count
            let num2 = i % student2.count
            let num3 = i % student3.count
            
            if student1[num1] == answers[i] {
                count[0] += 1
            }
            
            if student2[num2] == answers[i] {
                count[1] += 1
            }
                
            if student3[num3] == answers[i] {
                count[2] += 1
            }
        }
        
        let max = count.max()
        for i in 0..<count.count {
            if count[i] == max {
                result.append(i+1)
            }
        }
        
        result.sort()
        
        return result
    }
}
