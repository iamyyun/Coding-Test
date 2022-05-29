//
//  괄호_회전하기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 괄호_회전하기Tests: XCTestCase {

    private struct TestCase {
        let s: String
        let result: Int
    }
    
    private var sut: 괄호_회전하기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 괄호_회전하기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(s: "[](){}", result: 3)
        // when
        let result = sut.solution(testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(s: "}]()[{", result: 2)
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(s: "[)(]", result: 0)
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase4() {
        testCase = TestCase(s: "}}}}", result: 0)
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }
}
