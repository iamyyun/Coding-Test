//
//  카펫Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 카펫Tests: XCTestCase {

    private struct TestCase {
        let brown: Int
        let yellow: Int
        let result: [Int]
    }
    
    private var sut: 카펫!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 카펫()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(brown: 10, yellow: 2, result: [4,3])
        // when
        let result = sut.solution(testCase.brown, testCase.yellow)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(brown: 8, yellow: 1, result: [3,3])
        let result = sut.solution(testCase.brown, testCase.yellow)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(brown: 24, yellow: 24, result: [8,6])
        let result = sut.solution(testCase.brown, testCase.yellow)
        XCTAssertEqual(result, testCase.result)
    }

}
