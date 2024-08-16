//
//  Asteroid_Collision.swift
//  LeetCode_Swift
//
//  Created by Yunju Yang on 12/8/2024.
//

import Foundation

// 735.Asteroid Collision : https://leetcode.com/problems/asteroid-collision
struct Asteroid_Collision {
    func solution(_ asteroids: [Int]) -> [Int] {
        var result = [Int]()
        
        for asteroid in asteroids {
            if asteroid > 0 {
                result.append(asteroid)
            } else {
                while let lastAsteroid = result.last, lastAsteroid > 0, lastAsteroid < abs(asteroid) {
                    result.removeLast()
                }
                
                if let lastAsteroid = result.last, lastAsteroid == abs(asteroid) {
                    result.removeLast()
                } else if result.isEmpty || result.last! < 0 {
                    result.append(asteroid)
                }
            }
        }
        
        return result
    }
}
