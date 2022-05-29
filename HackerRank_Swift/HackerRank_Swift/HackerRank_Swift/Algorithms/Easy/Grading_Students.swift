//
//  Grading_Students.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/05/25.
//

import Foundation

// Grading Students : https://www.hackerrank.com/challenges/grading
struct Grading_Students {
    func solution(grades: [Int]) -> [Int] {
        var result = [Int]()
        
        for grade in grades {
            if grade < 38 {
                result.append(grade)
                continue
            }
            
            let round = grade%5
            if round > 2 {
                result.append(grade+(5-round))
            } else {
                result.append(grade)
            }
        }
        
        return result
    }
}
