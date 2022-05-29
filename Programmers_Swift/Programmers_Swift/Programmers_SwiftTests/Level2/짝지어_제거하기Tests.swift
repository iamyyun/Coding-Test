//
//  짝지어_제거하기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 짝지어_제거하기Tests: XCTestCase {

    private struct TestCase {
        let s: String
        let result: Int
    }
    
    private var sut: 짝지어_제거하기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 짝지어_제거하기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(s: "baabaa", result: 1)
        // when
        let result = sut.solution(testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(s: "cdcd", result: 0)
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }

}
