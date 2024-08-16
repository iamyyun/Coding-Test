//
//  Reverse_Words_in_a_StringTests.swift
//  LeetCode_SwiftTests
//
//  Created by Yunju Yang on 8/8/2024.
//

import XCTest
@testable import LeetCode_Swift

final class Reverse_Words_in_a_StringTests: XCTestCase {

    private struct TestCase {
        var s: String
        let result: String
    }
    
    private var sut: Reverse_Words_in_a_String!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Reverse_Words_in_a_String()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        testCase = TestCase(s: "the sky is blue", result: "blue is sky the")
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }

    func testCase2() {
        testCase = TestCase(s: "  hello world  ", result: "world hello")
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(s: "a good   example", result: "example good a")
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }

}
