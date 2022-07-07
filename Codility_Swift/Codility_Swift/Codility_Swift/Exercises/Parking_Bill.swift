//
//  Parking_Bill.swift
//  Codility_Swift
//
//  Created by Yunju Yang on 2022/07/06.
//

import Foundation

// Parking_Bill : https://app.codility.com/programmers/trainings/5/parking_bill/
struct Parking_Bill {
    func solution(E: String, L: String) -> Int {
        
        var total = 0
        let enterArr: [Int] = E.components(separatedBy: ":").map { Int($0)! }
        let leftArr: [Int] = L.components(separatedBy: ":").map { Int ($0)! }
        let enterMin = (enterArr[0]*60) + enterArr[1]
        let leftMin = (leftArr[0]*60) + leftArr[1]
        var diff = leftMin-enterMin
        
        total = 2+3
        if diff > 60 {
            diff = diff-60
            let hour = diff/60
            let minute = diff%60
            total += (hour*4)
            if minute > 0 {
                total += 4
            }
        }
        
        return total
    }
}
