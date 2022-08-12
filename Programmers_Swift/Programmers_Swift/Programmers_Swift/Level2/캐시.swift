//
//  캐시.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/10.
//

import Foundation

// 캐시 : https://school.programmers.co.kr/learn/courses/30/lessons/17680
struct 캐시 {
    func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
        var cacheArr = [String]()
        var time = 0
        
        if cacheSize == 0 {
            return cities.count*5
        } else {
            for city in cities {
                let upCity = city.uppercased()
                if cacheArr.count < cacheSize {
                    if cacheArr.contains(upCity) {
                        let index = cacheArr.firstIndex(of: upCity)
                        cacheArr.remove(at: index!)
                        time += 1
                    } else {
                        time += 5
                    }
                    cacheArr.append(upCity)
                } else {
                    if cacheArr.contains(upCity) {
                        let index = cacheArr.firstIndex(of: upCity)
                        cacheArr.remove(at: index!)
                        cacheArr.append(upCity)
                        time += 1
                    } else {
                        cacheArr.remove(at: 0)
                        cacheArr.append(upCity)
                        time += 5
                    }
                }
            }
            return time
        }
    }
}
