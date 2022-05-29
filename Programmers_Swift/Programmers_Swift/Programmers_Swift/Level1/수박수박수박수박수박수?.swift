//
//  수박수박수박수박수박수?.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import Foundation

// 수박수박수박수박수박수? : https://programmers.co.kr/learn/courses/30/lessons/12922
struct 수박수박수박수박수박수 {
    func solution(_ n:Int) -> String {
        var str = ""
        for i in 0..<n {
            str += (i%2 == 0 ? "수" : "박")
        }
        print(str)
        return str
    //        return (0..<n).map{($0%2==0 ? "수":"박")}.reduce("",+)
    }
}
