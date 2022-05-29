//
//  가장_큰_수Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 가장_큰_수Tests: XCTestCase {

    private struct TestCase {
        let numbers: [Int]
        let result: String
    }
    
    private var sut: 가장_큰_수!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 가장_큰_수()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(numbers: [6,10,2], result: "6210")
        // when
        let result = sut.solution(testCase.numbers)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(numbers: [3,30,34,5,9], result: "9534330")
        let result = sut.solution(testCase.numbers)
        XCTAssertEqual(result, testCase.result)
    }

}
