//
//  짝수와_홀수Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 짝수와_홀수Tests: XCTestCase {

    private struct TestCase {
        let num: Int
        let result: String
    }
    
    private var sut: 짝수와_홀수!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 짝수와_홀수()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(num: 3, result: "Odd")
        // when
        let result = sut.solution(testCase.num)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(num: 4, result: "Even")
        let result = sut.solution(testCase.num)
        XCTAssertEqual(result, testCase.result)
    }

}
