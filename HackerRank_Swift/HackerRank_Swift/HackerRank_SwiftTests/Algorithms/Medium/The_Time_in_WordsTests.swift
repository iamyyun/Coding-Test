//
//  The_Time_in_WordsTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/05/26.
//

import XCTest
@testable import HackerRank_Swift

class The_Time_in_WordsTests: XCTestCase {

    private struct TestCase {
        let h: Int
        let m: Int
        let result: String
    }
    
    private var sut: The_Time_in_Words!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = The_Time_in_Words()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(h: 5, m: 47, result: "thirteen minutes to six")
        // when
        let result = sut.solution(h: testCase.h, m: testCase.m)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(h: 3, m: 00, result: "three o' clock")
        // when
        let result = sut.solution(h: testCase.h, m: testCase.m)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        // given
        testCase = TestCase(h: 7, m: 15, result: "quarter past seven")
        // when
        let result = sut.solution(h: testCase.h, m: testCase.m)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
