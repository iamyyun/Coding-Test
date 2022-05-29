//
//  문자열을_정수로_바꾸기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 문자열을_정수로_바꾸기Tests: XCTestCase {

    private struct TestCase {
        let s: String
        let result: Int
    }
    
    private var sut: 문자열을_정수로_바꾸기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 문자열을_정수로_바꾸기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(s: "1234", result: 1234)
        // when
        let result = sut.solution(testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(s: "-1234", result: -1234)
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }

}
