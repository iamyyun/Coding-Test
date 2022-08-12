//
//  하샤드_수Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/10.
//

import XCTest
@testable import Programmers_Swift

class 하샤드_수Tests: XCTestCase {

    private struct TestCase {
        let x: Int
        let result: Bool
    }
    
    private var sut: 하샤드_수!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 하샤드_수()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(x: 10, result: true)
        // when
        let result = sut.solution(testCase.x)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(x: 12, result: true)
        let result = sut.solution(testCase.x)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(x: 11, result: false)
        let result = sut.solution(testCase.x)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase4() {
        testCase = TestCase(x: 13, result: false)
        let result = sut.solution(testCase.x)
        XCTAssertEqual(result, testCase.result)
    }

}
