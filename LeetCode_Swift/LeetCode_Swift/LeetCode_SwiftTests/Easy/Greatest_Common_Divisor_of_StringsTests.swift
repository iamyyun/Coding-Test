//
//  Greatest_Common_Divisor_of_StringsTests.swift
//  LeetCode_SwiftTests
//
//  Created by Yunju Yang on 13/7/2024.
//

import XCTest
@testable import LeetCode_Swift

final class Greatest_Common_Divisor_of_StringsTests: XCTestCase {
    
    private struct TestCase {
        let str1: String
        let str2: String
        let result: String
    }
    
    private var sut: Greatest_Common_Divisor_of_Strings!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Greatest_Common_Divisor_of_Strings()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        testCase = TestCase(str1: "ABCABC", str2: "ABC", result: "ABC")
        let result = sut.solution(testCase.str1, testCase.str2)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(str1: "ABABAB", str2: "ABAB", result: "AB")
        let result = sut.solution(testCase.str1, testCase.str2)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(str1: "LEET", str2: "CODE", result: "")
        let result = sut.solution(testCase.str1, testCase.str2)
        XCTAssertEqual(result, testCase.result)
    }

}
