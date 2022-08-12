//
//  ViewController.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/05/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        print(주차_요금_계산().solution([180, 5000, 10, 600], ["05:34 5961 IN", "06:00 0000 IN", "06:34 0000 OUT", "07:59 5961 OUT", "07:59 0148 IN", "18:59 0000 IN", "19:09 0148 OUT", "22:59 5961 IN", "23:00 5961 OUT"]))
        print(주차_요금_계산().solution([120, 0, 60, 591], ["16:00 3961 IN","16:00 0202 IN","18:00 3961 OUT","18:00 0202 OUT","23:58 3961 IN"]))
    }
    
    // Level 2
        // https://school.programmers.co.kr/learn/courses/30/lessons/60057
        func zipSolution(_ s:String) -> Int {
            var shortArr = [Int]()
            
            let max = s.count/2+1
            shortArr.append(s.count)
            for i in 1...max {
                let splitArr = getStrSizeArr(size: i)
                var sameStr = ""
                var sameArr = [String]()
                for i in 0..<splitArr.count {
                    let split = splitArr[i]
                    if sameArr.count == 0 { sameArr.append(split) }
                    else {
                        if sameArr.last == split {
                            if i == splitArr.count-1 {
                                sameArr.append(split)
                                sameStr += "\(sameArr.count)\(sameArr[0])"
                            } else {
                                sameArr.append(split)
                            }
                        } else {
                            if sameArr.count == 1 {
                                sameStr += "\(sameArr[0])"
                            } else {
                                sameStr += "\(sameArr.count)\(sameArr[0])"
                            }
                            
                            if i == splitArr.count-1 {
                                sameStr += split
                            } else {
                                sameArr = [String]()
                                sameArr.append(split)
                            }
                        }
                    }
                }
                if sameStr.count > 0 { shortArr.append(sameStr.count) }
            }
            
            func getStrSizeArr(size: Int) -> [String] {
                let arr = s.map { $0 }
                let element = stride(from: 0, to: s.count, by: size).map {
                    Array(arr[$0..<Swift.min($0+size, s.count)])
                }
                return element.compactMap{ String($0) }
            }
            
            return shortArr.min()!
        }
        
}

