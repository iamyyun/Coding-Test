//
//  H-Index.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// H-Index : https://programmers.co.kr/learn/courses/30/lessons/42747
struct HIndex {
    func solution(_ citations:[Int]) -> Int {
        var hIndexes = [Int]()
        let citationsCopy = citations.sorted(by: <)
        
        for i in 0...citationsCopy.count {
            let downCount = citationsCopy.filter{ $0 <= i }.count
            let upCount = citationsCopy.filter { $0 >= i }.count
            if i >= downCount && i <= upCount {
                hIndexes.append(i)
            }
        }
        
        if hIndexes.count == 0 {
            return 0
        }
        
        return hIndexes.max()!
    }
}
