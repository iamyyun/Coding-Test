//
//  Plus_MinusTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/05/25.
//

import XCTest
@testable import HackerRank_Swift

class Plus_MinusTests: XCTestCase {

    private struct TestCase {
        let arr: [Int]
        let result: [Double]
    }
    
    private var sut: Plus_Minus!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Plus_Minus()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(arr: [1,1,0,-1,-1], result:[0.4, 0.4, 0.2])
        // when
        let result = sut.solution(arr: testCase.arr)
        // then
        XCTAssertEqual(result[0], testCase.result[0])
        XCTAssertEqual(result[1], testCase.result[1])
        XCTAssertEqual(result[2], testCase.result[2])
    }
    
    func testCase2() {
        // given
        testCase = TestCase(arr: [-4,3,-9,0,4,1], result: [0.500000, 0.333333, 0.166667])
        // when
        let result = sut.solution(arr: testCase.arr)
        // then
        XCTAssertEqual(result[0], testCase.result[0])
        XCTAssertEqual(result[1], testCase.result[1])
        XCTAssertEqual(result[2], testCase.result[2])
    }

}
