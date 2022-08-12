//
//  최소직사각형Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/12.
//

import XCTest
@testable import Programmers_Swift

class 최소직사각형Tests: XCTestCase {

    private struct TestCase {
        let sizes: [[Int]]
        let result: Int
    }
    
    private var sut: 최소직사각형!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 최소직사각형()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(sizes: [[60, 50], [30, 70], [60, 30], [80, 40]], result: 4000)
        // when
        let result = sut.solution(testCase.sizes)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(sizes: [[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]], result: 120)
        let result = sut.solution(testCase.sizes)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(sizes: [[14, 4], [19, 6], [6, 16], [18, 7], [7, 11]], result: 133)
        let result = sut.solution(testCase.sizes)
        XCTAssertEqual(result, testCase.result)
    }

}
