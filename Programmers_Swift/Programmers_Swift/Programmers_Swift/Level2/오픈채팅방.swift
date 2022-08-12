//
//  오픈채팅방.swift
//  Programmers_Swift
//
//  Created by Yunju Yang on 2022/08/12.
//

import Foundation

// 오픈채팅방 : https://school.programmers.co.kr/learn/courses/30/lessons/42888
struct 오픈채팅방 {
    func solution(_ record:[String]) -> [String] {
        var userDic: Dictionary<String, String> = [:]
        for id in record {
            let userArr = id.components(separatedBy: " ")
            if userArr.count > 2 {
                userDic[userArr[1]] = userArr[2]
            }
        }

        var chatArr = [String]()
        for id in record {
            let userArr = id.components(separatedBy: " ")
            let name = userDic[userArr[1]]
            if userArr[0] == "Enter" {
                chatArr.append(name!+"님이 들어왔습니다.")
            } else if userArr[0] == "Leave" {
                chatArr.append(name!+"님이 나갔습니다.")
            }
        }

        return chatArr
    }
}
