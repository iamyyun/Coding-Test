//
//  자릿수_더하기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/08.
//

import XCTest
@testable import Programmers_Swift

class 자릿수_더하기Tests: XCTestCase {

    private struct TestCase {
        let n: Int
        let result: Int
    }
    
    private var sut: 자릿수_더하기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 자릿수_더하기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(n: 123, result: 6)
        // when
        let result = sut.solution(testCase.n)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(n: 987, result: 24)
        let result = sut.solution(testCase.n)
        XCTAssertEqual(result, testCase.result)
    }

}
