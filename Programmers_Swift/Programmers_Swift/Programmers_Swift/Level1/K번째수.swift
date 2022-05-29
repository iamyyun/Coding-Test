//
//  K번째수.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// K번째수 : https://programmers.co.kr/learn/courses/30/lessons/42748
struct K번째수 {
    func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
        var result: [Int] = []
        for command in commands {
            var arr: [Int] = []
            for i in (command[0]-1)...(command[1]-1) {
                arr.append(array[i])
            }
            arr.sort()
            result.append(arr[command[2]-1])
        }
        return result
        
        /*
        return commands.map({(key) in
        return array[(key[0]-1)...(key[1]-1)].sorted()[key[2]-1]})
         */
    }
}
