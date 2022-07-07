//
//  Balanced_BracketsTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/07/04.
//

import XCTest
@testable import HackerRank_Swift

class Balanced_BracketsTests: XCTestCase {

    private struct TestCase {
        let s: String
        let result: String
    }
    
    private var sut: Balanced_Brackets!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Balanced_Brackets()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(s: "{[()]}", result: "YES")
        // when
        let result = sut.solution(s: testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(s: "{[(])}", result: "NO")
        // when
        let result = sut.solution(s: testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        // given
        testCase = TestCase(s: "{{[[(())]]}}", result: "YES")
        // when
        let result = sut.solution(s: testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase4() {
        // given
        testCase = TestCase(s: "{([", result: "NO")
        // when
        let result = sut.solution(s: testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
