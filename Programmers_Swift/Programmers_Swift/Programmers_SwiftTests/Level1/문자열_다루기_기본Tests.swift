//
//  문자열_다루기_기본Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 문자열_다루기_기본Tests: XCTestCase {
    
    private struct TestCase {
        let s: String
        let result: Bool
    }
    
    private var sut: 문자열_다루기_기본!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 문자열_다루기_기본()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(s: "a234", result: false)
        // when
        let result = sut.solution(testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(s: "1234", result: true)
        // when
        let result = sut.solution(testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
