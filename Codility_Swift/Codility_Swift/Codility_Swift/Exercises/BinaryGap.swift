//
//  BinaryGap.swift
//  Codility_Swift
//
//  Created by Yunju Yang on 2022/07/06.
//

import Foundation

// BinaryGap : https://app.codility.com/programmers/trainings/9/binary_gap/
struct BinaryGap {
    func solution(N: Int) -> Int {
        
        let radix = String(N, radix: 2)
        let radixArr = radix.map { String($0) }
        var countArr = [Int]()
        countArr.append(0)
        var count = -1
        for i in 0..<radixArr.count {
            let num = Int(radixArr[i])
            if i == 0 {
                if num == 1 {
                    count = 0
                }
            } else if i == radixArr.count-1 {
                if num == 1 {
                    countArr.append(count)
                }
            } else {
                if num == 1 {
                    countArr.append(count)
                    count = 0
                } else {
                    if count >= 0 {
                        count += 1
                    }
                }
            }
        }
        
        return countArr.max()!
    }
}
