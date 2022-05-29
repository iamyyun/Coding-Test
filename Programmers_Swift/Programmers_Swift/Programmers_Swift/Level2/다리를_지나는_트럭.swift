//
//  다리를_지나는_트럭.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 다리를 지나는 트럭 : https://programmers.co.kr/learn/courses/30/lessons/42583
struct 다리를_지나는_트럭 {
    func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
        var time = 0
        var trucks = truck_weights
        var bridge = Array(repeating: 0, count: bridge_length)
        var bridgeWeight = 0
        
        while !bridge.isEmpty {
            print(bridge)
            time += 1
            bridgeWeight -= bridge.removeFirst()
            
            if let truck = trucks.first {
                if truck+bridgeWeight <= weight {
                    bridgeWeight += trucks.removeFirst()
                    bridge.append(truck)
                } else {
                    bridge.append(0)
                }
            }
        }
        
        return time
    }
}
