//
//  JadenCase_문자열_만들기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class JadenCase_문자열_만들기Tests: XCTestCase {

    private struct TestCase {
        let s: String
        let result: String
    }
    
    private var sut: JadenCase_문자열_만들기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = JadenCase_문자열_만들기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(s: "3people unFollowed me", result: "3people Unfollowed Me")
        // when
        let result = sut.solution(testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(s: "for the last week", result:     "For The Last Week")
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }

}
