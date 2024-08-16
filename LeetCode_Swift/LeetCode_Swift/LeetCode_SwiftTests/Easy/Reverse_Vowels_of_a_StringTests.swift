//
//  Reverse_Vowels_of_a_StringTests.swift
//  LeetCode_SwiftTests
//
//  Created by Yunju Yang on 5/8/2024.
//

import XCTest
@testable import LeetCode_Swift

final class Reverse_Vowels_of_a_StringTests: XCTestCase {

    private struct TestCase {
        let s: String
        let result: String
    }
    
    private var sut: Reverse_Vowels_of_a_String!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Reverse_Vowels_of_a_String()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        testCase = TestCase(s: "hello", result: "holle")
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }

    func testCase2() {
        testCase = TestCase(s: "LeetCode", result: "LeotCede")
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(s: "aA", result: "Aa")
        let result = sut.solution("aA")
        XCTAssertEqual(result, testCase.result)
    }

}
