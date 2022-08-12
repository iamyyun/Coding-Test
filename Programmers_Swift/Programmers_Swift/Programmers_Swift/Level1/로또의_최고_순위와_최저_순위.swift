//
//  로또의_최고_순위와_최저_순위.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/13.
//

import Foundation

// 로또의 최고 순위와 최저 순위 : https://school.programmers.co.kr/learn/courses/30/lessons/77484
struct 로또의_최고_순위와_최저_순위 {
    func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
        let lottoArr = lottos.filter{ $0 != 0 }
        let zeroCount = lottos.count-lottoArr.count

        var count = 0
        for lotto in lottoArr {
            if win_nums.contains(lotto) { count += 1 }
        }

        return [min(7-count-zeroCount,6), min(7-count,6)]
    }
}
