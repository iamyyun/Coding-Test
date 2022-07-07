//
//  ViewController.swift
//  HackerRank_Swift
//
//  Created by Yunju Yang on 2022/05/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let sut = Waiter()
        print(sut.solution(number: [80,37,86,79,8,39,43,41,15,33,30,15,45,55,61,74,49,49,20,66,77,19,85,44,81,82,27,5,36,83,91,45,39,44,19,44,71,49,8,66,81,40,29,60,35,31,44], q: 21))
    }
}

