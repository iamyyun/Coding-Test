//
//  Extra_Long_Factorials.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/07/04.
//

import Foundation

// Extra Long Factorials : https://www.hackerrank.com/challenges/extra-long-factorials
struct Extra_Long_Factorials {
    func solution(n: Int) -> String {
        var result = BigInt(value: String(1))
        
        var number = BigInt(value: String(n))
        while Int(number.value)! > 0 {
            result = (result * number)
            number = BigInt(value: String(Int(number.value)!-1))
        }
        
        return result.value
    }
}

struct BigInt {
    
    var value: String
    
    func multiply(right: BigInt) -> BigInt {
        let leftArr = value.map { String($0) }
        let rightArr = right.value.map { String($0) }
        let leftCharacterArray = leftArr.reversed().map { Int(String($0))! }
        let rightCharacterArray = rightArr.reversed().map { Int(String($0))! }
        var result = [Int](repeating: 0, count: leftCharacterArray.count+rightCharacterArray.count)
        
        for leftIndex in 0..<leftCharacterArray.count {
            for rightIndex in 0..<rightCharacterArray.count {
                
                let resultIndex = leftIndex + rightIndex
                
                result[resultIndex] = leftCharacterArray[leftIndex] * rightCharacterArray[rightIndex] + (resultIndex >= result.count ? 0 : result[resultIndex])
                if result[resultIndex] > 9 {
                    result[resultIndex + 1] = (result[resultIndex] / 10) + (resultIndex+1 >= result.count ? 0 : result[resultIndex + 1])
                    result[resultIndex] -= (result[resultIndex] / 10) * 10
                }
                
            }
            
        }
        
        result = Array(result.reversed())

        while result.count > 0 && result.first == 0 {
            result.removeFirst(1)
        }
        
        return  BigInt(value: result.map { String($0) }.joined(separator: ""))
    }
    
}

func * (left: BigInt, right: BigInt) -> BigInt { return left.multiply(right: right) }
