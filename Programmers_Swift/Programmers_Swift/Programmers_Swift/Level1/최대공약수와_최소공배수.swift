//
//  최대공약수와_최소공배수.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/13.
//

import Foundation

// 최대공약수와 최소공배수 : https://school.programmers.co.kr/learn/courses/30/lessons/12940
struct 최대공약수와_최소공배수 {
    func solution(_ n:Int, _ m:Int) -> [Int] {
        func gcd(_ a:Int, _ b:Int) -> Int { // 최대공약수
            if b == 0 { return a }
            return gcd(b, a%b)
        }

        func lcm(_ a:Int, _ b:Int) -> Int { // 최소공배수
            return a*b/gcd(a,b)
        }

        return [gcd(n, m), lcm(n, m)]
    }
}
