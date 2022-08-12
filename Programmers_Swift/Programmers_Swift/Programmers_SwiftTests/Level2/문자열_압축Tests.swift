//
//  문자열_압축Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/13.
//

import XCTest
@testable import Programmers_Swift

class 문자열_압축Tests: XCTestCase {

    private struct TestCase {
        let s: String
        let result: Int
    }
    
    private var sut: 문자열_압축!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 문자열_압축()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(s: "aabbaccc", result: 7)
        // when
        let result = sut.solution(testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(s: "ababcdcdababcdcd", result: 9)
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(s: "abcabcdede", result: 8)
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase4() {
        testCase = TestCase(s: "abcabcabcabcdededededede", result: 14)
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase5() {
        testCase = TestCase(s: "xababcdcdababcdcd", result: 17)
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }

}
