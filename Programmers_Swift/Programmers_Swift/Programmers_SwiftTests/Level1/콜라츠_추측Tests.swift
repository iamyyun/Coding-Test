//
//  콜라츠_추측Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/10.
//

import XCTest
@testable import Programmers_Swift

class 콜라츠_추측Tests: XCTestCase {

    private struct TestCase {
        let num: Int
        let result: Int
    }
    
    private var sut: 콜라츠_추측!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 콜라츠_추측()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(num: 6, result: 8)
        // when
        let result = sut.solution(testCase.num)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(num: 16, result: 4)
        let result = sut.solution(testCase.num)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(num: 626331, result: -1)
        let result = sut.solution(testCase.num)
        XCTAssertEqual(result, testCase.result)
    }

}
