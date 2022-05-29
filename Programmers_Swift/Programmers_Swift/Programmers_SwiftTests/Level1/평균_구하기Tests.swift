//
//  평균_구하기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 평균_구하기Tests: XCTestCase {

    private struct TestCase {
        let arr: [Int]
        let result: Double
    }
    
    private var sut: 평균_구하기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 평균_구하기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(arr: [1,2,3,4], result: 2.5)
        // when
        let result = sut.solution(testCase.arr)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(arr: [5,5], result: 5)
        let result = sut.solution(testCase.arr)
        XCTAssertEqual(result, testCase.result)
    }

}
