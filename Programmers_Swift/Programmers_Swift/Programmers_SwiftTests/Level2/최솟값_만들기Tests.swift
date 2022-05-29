//
//  최솟값_만들기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 최솟값_만들기Tests: XCTestCase {

    private struct TestCase {
        let A: [Int]
        let B: [Int]
        let result: Int
    }
    
    private var sut: 최솟값_만들기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 최솟값_만들기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(A: [1,4,2], B: [5,4,4], result: 29)
        // when
        let result = sut.solution(testCase.A, testCase.B)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(A: [1,2], B: [3,4], result: 10)
        let result = sut.solution(testCase.A, testCase.B)
        XCTAssertEqual(result, testCase.result)
    }

}
