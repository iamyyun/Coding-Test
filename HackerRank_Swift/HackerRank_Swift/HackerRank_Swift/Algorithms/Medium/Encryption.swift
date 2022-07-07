//
//  Encryption.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/07/04.
//

import Foundation

// Encryption : https://www.hackerrank.com/challenges/encryption
struct Encryption {
    func solution(s: String) -> String {
        
        let string = s.replacingOccurrences(of: " ", with: "")
        let arrStr = string.map { String($0) }
        let value = sqrt(Double(string.count))
        var row = Int(floor(value))
        var column = 0
        if row*row == arrStr.count {
            column = row
        } else {
            column = Int(floor(value+1))
        }
        
        if row*column < arrStr.count {
            row += 1
        }
        
        var gridArr = [[String]]()
        var index = 0
        for _ in 1...row {
            var columnArr = [String]()
            for _ in 0..<column {
                if index >= arrStr.count {
                    break
                }
                columnArr.append(arrStr[index])
                index += 1
            }
            gridArr.append(columnArr)
        }
        
        var resultArr = [String]()
        for i in 0..<column {
            var resultStr = ""
            for j in 0..<row {
                if gridArr.indices.contains(j) && gridArr[j].indices.contains(i) {
                    resultStr += gridArr[j][i]
                }
            }
            resultArr.append(resultStr)
        }
        
        return resultArr.joined(separator: " ")
    }
}
