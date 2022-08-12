//
//  숫자_문자열과_영단어Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/09.
//

import XCTest
@testable import Programmers_Swift

class 숫자_문자열과_영단어Tests: XCTestCase {

    private struct TestCase {
        let s: String
        let result: Int
    }
    
    private var sut: 숫자_문자열과_영단어!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 숫자_문자열과_영단어()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(s: "one4seveneight", result: 1478)
        // when
        let result = sut.solution(testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(s: "23four5six7", result: 234567)
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(s: "2three45sixseven", result: 234567)
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase4() {
        testCase = TestCase(s: "123", result: 123)
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }

}
