//
//  Bill_Division.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/07/04.
//

import Foundation

// Bill Division : https://www.hackerrank.com/challenges/bon-appetit
struct Bill_Division {
    func solution(bill: [Int], k: Int, b: Int) -> String {
        
        var newBill = bill
        newBill.remove(at: k)
        print("newBill: ", newBill)
        var annaBill = newBill.reduce(0,+)
        print("anaBill: ", annaBill)
        annaBill = annaBill/2
        print("anaBill: ", annaBill)
        
        if b == annaBill {
            return "Bon Appetit"
        } else {
            let brian = b-annaBill
            return String(brian)
        }
    }
}
