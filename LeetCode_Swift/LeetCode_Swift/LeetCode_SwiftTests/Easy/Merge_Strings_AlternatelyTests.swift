//
//  Merge_Strings_AlternatelyTests.swift
//  LeetCode_SwiftTests
//
//  Created by Yunju Yang on 10/7/2024.
//

import XCTest
@testable import LeetCode_Swift

class Merge_Strings_AlternatelyTests: XCTestCase {
    
    private struct TestCase {
        let word1: String
        let word2: String
        let result: String
    }
    
    private var sut: Merge_Strings_Alternately!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Merge_Strings_Alternately()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        testCase = TestCase(word1: "hello", word2: "yunju", result: "hyeulnljou")
        let result = sut.solution(testCase.word1, testCase.word2)
        XCTAssertEqual(result, testCase.result)
    }

    func testCase2() {
        testCase = TestCase(word1: "hello", word2: "Australia", result: "hAeulsltoralia")
        let result = sut.solution(testCase.word1, testCase.word2)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(word1: "hello", word2: "sun", result: "hseulnlo")
        let result = sut.solution(testCase.word1, testCase.word2)
        XCTAssertEqual(result, testCase.result)
    }
}
