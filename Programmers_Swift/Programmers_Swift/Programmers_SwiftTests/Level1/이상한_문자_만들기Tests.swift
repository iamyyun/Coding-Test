//
//  이상한_문자_만들기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/09.
//

import XCTest
@testable import Programmers_Swift

class 이상한_문자_만들기Tests: XCTestCase {

    private struct TestCase {
        let s: String
        let result: String
    }
    
    private var sut: 이상한_문자_만들기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 이상한_문자_만들기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(s: "try hello world", result: "TrY HeLlO WoRlD")
        // when
        let result = sut.solution(testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
