//
//  핸드폰_번호_가리기.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/08.
//

import Foundation

// 핸드폰 번호 가리기 : https://school.programmers.co.kr/learn/courses/30/lessons/12948
struct 핸드폰_번호_가리기 {
    func solution(_ phone_number:String) -> String {
        var phoneNum = String(repeating: "*", count: phone_number.count-4)
        phoneNum = phoneNum + phone_number.suffix(4)
        return phoneNum
    }
}
