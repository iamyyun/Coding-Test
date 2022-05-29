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
        
        let sut = Connected_Cells_in_a_Grid()
        print(sut.solution(matrix: [[0,1,1,1,1],[1,0,0,0,1],[1,1,0,1,0],[0,1,0,1,1],[0,1,1,1,0]]))
    }
}

