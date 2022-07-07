//
//  ViewController.swift
//  Codility_Swift
//
//  Created by Yunju Yang on 2022/07/06.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let sut = FirstUnique()
        print(sut.solution(A: [4,10,5,4,2,10]))// -> 5
    }


}

