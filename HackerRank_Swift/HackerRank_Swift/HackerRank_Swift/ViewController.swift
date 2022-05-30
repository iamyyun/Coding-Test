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
        
        let sut = QHEAP1()
        print(sut.solution(operations: ["1 4","1 9","3","2 4","3"]))
    }
}

