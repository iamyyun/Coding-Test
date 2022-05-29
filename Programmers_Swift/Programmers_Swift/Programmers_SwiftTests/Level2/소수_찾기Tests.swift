//
//  소수_찾기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 소수_찾기Tests: XCTestCase {

    private struct TestCase {
        let numbers: String
        let result: Int
    }
    
    private var sut: 소수_찾기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 소수_찾기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(numbers: "17", result: 3)
        // when
        let result = sut.solution(testCase.numbers)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(numbers: "011", result: 2)
        let result = sut.solution(testCase.numbers)
        XCTAssertEqual(result, testCase.result)
    }

}
