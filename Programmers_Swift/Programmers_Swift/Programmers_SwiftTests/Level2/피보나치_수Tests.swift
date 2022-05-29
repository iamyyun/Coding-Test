//
//  피보나치_수Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 피보나치_수Tests: XCTestCase {

    private struct TestCase {
        let n: Int
        let result: Int
    }
    
    private var sut: 피보나치_수!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 피보나치_수()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(n: 3, result: 2)
        // when
        let result = sut.solution(testCase.n)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(n: 5, result: 5)
        let result = sut.solution(testCase.n)
        XCTAssertEqual(result, testCase.result)
    }

}
