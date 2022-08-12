//
//  x만큼_간격이_있는_n개의_숫자Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/10.
//

import XCTest
@testable import Programmers_Swift

class x만큼_간격이_있는_n개의_숫자Tests: XCTestCase {

    private struct TestCase {
        let x: Int
        let n: Int
        let result: [Int64]
    }
    
    private var sut: x만큼_간격이_있는_n개의_숫자!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = x만큼_간격이_있는_n개의_숫자()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(x: 2, n: 5, result: [2,4,6,8,10])
        // when
        let result = sut.solution(testCase.x, testCase.n)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(x: 4, n: 3, result: [4,8,12])
        let result = sut.solution(testCase.x, testCase.n)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(x: -4, n: 2, result: [-4,-8])
        let result = sut.solution(testCase.x, testCase.n)
        XCTAssertEqual(result, testCase.result)
    }

}
