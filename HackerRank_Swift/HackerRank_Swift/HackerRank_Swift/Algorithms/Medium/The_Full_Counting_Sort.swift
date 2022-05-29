//
//  The_Full_Counting_Sort.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/05/27.
//

import Foundation

// The Full Counting Sort : https://www.hackerrank.com/challenges/countingsort4
struct The_Full_Counting_Sort {
    func solution(arr: [(Int,String)]) -> String {
        var dic: Dictionary<Int,String> = [:]
        for data in arr {
            if dic[data.0] != nil {
                dic[data.0]! += "\(data.1) "
            } else {
                dic[data.0] = "\(data.1) "
            }
        }
        
        var result: String = ""
        for num in 0...99 {
            if let str = dic[num] {
                result += str
            }
        }
        
        return result
    }
}

//var array: [(Int, String)] = []
//let n = Int(readLine()!)!
//
//for _ in 0..<n/2{
//    let line = readLine()!
//    var item = line.withCString {
//        (cStr: UnsafePointer<Int8>) -> (Int, String) in
//        let x = atoi(cStr)
//        return (Int(x), "-")
//    }
//    array.append(item)
//}
//
//for index in n/2..<n {
//    let line = readLine()!
//    array.append(line.withCString {
//        (cStr: UnsafePointer<Int8>) -> (Int, String) in
//        let x = atoi(cStr)
//        let pSpc = strchr(cStr, 0x20)!
//        let str = String(validatingUTF8: pSpc + 1)!
//        return (Int(x), str)
//    })
//}
//
//print(countingSort(arr: array))
