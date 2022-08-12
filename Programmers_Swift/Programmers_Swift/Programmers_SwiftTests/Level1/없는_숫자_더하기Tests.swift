//
//  없는_숫자_더하기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/09.
//

import XCTest
@testable import Programmers_Swift

class 없는_숫자_더하기Tests: XCTestCase {

    private struct TestCase {
        let numbers: [Int]
        let result: Int
    }
    
    private var sut: 없는_숫자_더하기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 없는_숫자_더하기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(numbers: [1,2,3,4,6,7,8,0], result: 14)
        // when
        let result = sut.solution(testCase.numbers)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(numbers: [5,8,4,0,6,7,9], result: 6)
        let result = sut.solution(testCase.numbers)
        XCTAssertEqual(result, testCase.result)
    }

}
