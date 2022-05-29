//
//  카펫.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 카펫 : https://programmers.co.kr/learn/courses/30/lessons/42842
struct 카펫 {
    func solution(_ brown:Int, _ yellow:Int) -> [Int] {
        var result = [Int]()
        let total = brown+yellow
        
        // 공약수구하기
        var divide = [Int]()
        for i in 1...total/2 {
            if total % i == 0 {
                divide.append(i)
            }
        }
        print(divide)
        
        for j in 0..<divide.count {
            if divide[j] < 3 {
                continue
            }
            
            let num = total/divide[j]
            if (divide[j] <= num) {
                let width = (divide[j]-2) * (num-2)
                if width >= yellow {
                    result.append(divide[j])
                    result.append(total/divide[j])
                    break
                }
            }
        }
        
        result = result.sorted(by: >)
        
        return result
    }
}
