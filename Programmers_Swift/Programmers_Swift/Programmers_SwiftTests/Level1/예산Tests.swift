//
//  예산Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/09.
//

import XCTest
@testable import Programmers_Swift

class 예산Tests: XCTestCase {

    private struct TestCase {
        let d: [Int]
        let budget: Int
        let result: Int
    }
    
    private var sut: 예산!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 예산()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(d: [1,3,2,5,4], budget: 9, result: 3)
        // when
        let result = sut.solution(testCase.d, testCase.budget)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(d: [2,2,3,3], budget: 10, result: 4)
        let result = sut.solution(testCase.d, testCase.budget)
        XCTAssertEqual(result, testCase.result)
    }

}
