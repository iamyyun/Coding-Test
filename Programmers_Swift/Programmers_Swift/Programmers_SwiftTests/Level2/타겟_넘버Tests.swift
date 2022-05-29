//
//  타겟_넘버Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 타겟_넘버Tests: XCTestCase {

    private struct TestCase {
        let numbers: [Int]
        let target: Int
        let result: Int
    }
    
    private var sut: 타겟_넘버!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 타겟_넘버()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(numbers: [1,1,1,1,1], target: 3, result: 5)
        // when
        let result = sut.solution(testCase.numbers, testCase.target)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(numbers: [4,1,2,1], target: 4, result: 2)
        let result = sut.solution(testCase.numbers, testCase.target)
        XCTAssertEqual(result, testCase.result)
    }
}
