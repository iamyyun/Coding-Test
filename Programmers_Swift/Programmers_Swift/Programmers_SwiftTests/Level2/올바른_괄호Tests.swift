//
//  올바른_괄호Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 올바른_괄호Tests: XCTestCase {

    private struct TestCase {
        let s: String
        let result: Bool
    }
    
    private var sut: 올바른_괄호!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 올바른_괄호()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(s: "()()", result: true)
        // when
        let result = sut.solution(testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(s: "(())()", result: true)
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(s: ")()(", result: false)
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase4() {
        testCase = TestCase(s: "(()(", result: false)
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }

}
