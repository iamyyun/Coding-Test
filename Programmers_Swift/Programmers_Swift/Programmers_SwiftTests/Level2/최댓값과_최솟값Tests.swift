//
//  최댓값과_최솟값Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 최댓값과_최솟값Tests: XCTestCase {

    private struct TestCase {
        let s: String
        let result: String
    }
    
    private var sut: 최댓값과_최솟값!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 최댓값과_최솟값()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(s: "1 2 3 4", result: "1 4")
        // when
        let result = sut.solution(testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(s: "-1 -2 -3 -4", result: "-4 -1")
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(s: "-1 -1", result: "-1 -1")
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }

}
