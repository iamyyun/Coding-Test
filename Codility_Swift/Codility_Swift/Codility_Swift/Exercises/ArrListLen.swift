//
//  ArrListLen.swift
//  Codility_Swift
//
//  Created by Yunju Yang on 2022/07/06.
//

import Foundation

// ArrListLen : https://app.codility.com/programmers/trainings/7/arr_list_len/
struct ArrListLen {
    func solution(A: [Int]) -> Int {
        
        var count = 0
        
        var index = 0
        for _ in 0..<A.count {
            if index < 0 { break }
            let num = A[index]
            if num != index {
                count += 1
                index = num
            }
        }
        
        return count
    }
}
