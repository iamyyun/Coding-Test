//
//  오픈채팅방Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/13.
//

import XCTest
@testable import Programmers_Swift

class 오픈채팅방Tests: XCTestCase {

    private struct TestCase {
        let record: [String]
        let result: [String]
    }
    
    private var sut: 오픈채팅방!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 오픈채팅방()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(record: ["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"], result: ["Prodo님이 들어왔습니다.", "Ryan님이 들어왔습니다.", "Prodo님이 나갔습니다.", "Prodo님이 들어왔습니다."])
        // when
        let result = sut.solution(testCase.record)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
