//
//  단어_변환Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 단어_변환Tests: XCTestCase {

    private struct TestCase {
        let begin: String
        let target: String
        let words: [String]
        let result: Int
    }
    
    private var sut: 단어_변환!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 단어_변환()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(begin: "hit", target: "cog", words: ["hot", "dot", "dog", "lot", "log", "cog"], result: 4)
        // when
        let result = sut.solution(testCase.begin, testCase.target, testCase.words)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(begin: "hit", target: "cog", words: ["hot", "dot", "dog", "lot", "log"], result: 0)
        let result = sut.solution(testCase.begin, testCase.target, testCase.words)
        XCTAssertEqual(result, testCase.result)
    }

}
