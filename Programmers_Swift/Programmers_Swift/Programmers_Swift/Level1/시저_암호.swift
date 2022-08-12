//
//  시저_암호.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/09.
//

import Foundation

// 시저 암호 : https://school.programmers.co.kr/learn/courses/30/lessons/12926
struct 시저_암호 {
    func solution(_ s:String, _ n:Int) -> String {
        let lowerAlphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
        let upperAlphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
        
        let arr = s.map { String($0) }
        var newArr = [String]()
        
        for str in arr {
            if str == " " {
                newArr.append(str)
            } else {
                if lowerAlphabet.contains(str) {
                    var index = lowerAlphabet.firstIndex(of: str)
                    if index!+n >= 26 { index = (index!+n)-26 }
                    else { index = index!+n }
                    newArr.append(lowerAlphabet[index!])
                } else {
                    var index = upperAlphabet.firstIndex(of: str)
                    if index!+n >= 26 { index = (index!+n)-26 }
                    else { index = index!+n }
                    newArr.append(upperAlphabet[index!])
                }
            }
        }
        
        return newArr.joined()
    }
}
