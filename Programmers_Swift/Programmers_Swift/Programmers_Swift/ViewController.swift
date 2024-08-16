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
        
        for i in 0...4 {
            for _ in 0...i {
                print("*", terminator: "")
            }
            print("")
        }
        
        for j in 0...4 {
            for _ in 0...4-j {
                print("*", terminator: "")
            }
            print("")
        }
        
        for k in 0...4 {
            for _ in k...4 {
                print(" ", terminator: "")
            }
            for _ in 0...k {
                print("*", terminator: "")
            }
            print("")
        }
        
        for m in 0...4 {
            for _ in 0...m {
                print(" ", terminator: "")
            }
            for _ in 0...4-m {
                print("*", terminator: "")
            }
            print("")
        }
        
        for m in 1...5 {
            for _ in 1...(6-m) {
                print(" ", terminator: "")
            }
            for _ in 1...m*2-1 {
                print("*", terminator: "")
            }
            print("")
        }
        
        let hello = "hello"
        print(hello.map { String($0) }.reversed().joined())
        
        let numArr = [1,2,3,4,5,6,7,8,9,10]
        let strArr = ["가","나","다","라","마","바"]
        print(numArr.map { $0+1 })
        print(numArr.map { $0%2 == 0 })
        print(numArr.filter{ $0%2 == 0 })
        print(numArr.reduce(0, +))
        print(strArr.reduce("", +))
        print(numArr.map { String($0) }.joined())
        print(strArr.joined())
        
    }
}

