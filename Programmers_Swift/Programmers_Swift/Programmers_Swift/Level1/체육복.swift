//
//  체육복.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 체육복 : https://programmers.co.kr/learn/courses/30/lessons/42862
struct 체육복 {
    func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
        // 중복제거
        let lostCopy = lost.filter{!reserve.contains($0)}
        let reserveCopy = reserve.filter{!lost.contains($0)}
        var needVisit = Array(repeating: false, count: reserveCopy.count)
        
        // 하나만 갖고있는 학생 + 여분갖고 있는 학생
        var total = n-(lostCopy.count+reserve.count) + reserve.count
        
        while needVisit.contains(false) {
            for i in 0..<reserveCopy.count {
            
                for j in 0..<lostCopy.count {
                
                    let lostStu = lostCopy[j]
                    let reserveStu = reserveCopy[i]
                    
                    if ((lostStu-1) == reserveStu || (lostStu+1) == reserveStu) && needVisit[i] == false {
                        needVisit[i] = true
                        total += 1
                    }
                }
                needVisit[i] = true
            }
        }
        
        if total > n {
            total = n
        }
        
        return total
    }
}
