//
//  Time_ConversionTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/05/25.
//

import XCTest
@testable import HackerRank_Swift

class Time_ConversionTests: XCTestCase {

    private struct TestCase {
        let s: String
        let result: String
    }
    
    private var sut: Time_Conversion!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Time_Conversion()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(s: "07:00:45PM", result: "19:00:45")
        // when
        let result = sut.solution(s: testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
