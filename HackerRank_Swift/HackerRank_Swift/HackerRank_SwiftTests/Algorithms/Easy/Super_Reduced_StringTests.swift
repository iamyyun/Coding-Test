//
//  Super_Reduced_StringTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/05/25.
//

import XCTest
@testable import HackerRank_Swift

class Super_Reduced_StringTests: XCTestCase {

    private struct TestCase {
        let s: String
        let result: String
    }
    
    private var sut: Super_Reduced_String!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Super_Reduced_String()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(s: "aaabccddd", result: "abd")
        // when
        let result = sut.solution(s: testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(s: "aa", result: "Empty String")
        // when
        let result = sut.solution(s: testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        // given
        testCase = TestCase(s: "baab", result: "Empty String")
        // when
        let result = sut.solution(s: testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
