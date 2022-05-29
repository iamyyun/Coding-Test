//
//  Ice_Cream_ParlorTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/05/26.
//

import XCTest
@testable import HackerRank_Swift

class Ice_Cream_ParlorTests: XCTestCase {

    private struct TestCase {
        let m: Int
        let arr: [Int]
        let result: [Int]
    }
    
    private var sut: Ice_Cream_Parlor!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Ice_Cream_Parlor()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(m: 6, arr: [1,3,4,5,6], result: [1,4])
        // when
        let result = sut.solution(m: testCase.m, arr: testCase.arr)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(m: 4, arr: [1,4,5,3,2], result: [1,4])
        // when
        let result = sut.solution(m: testCase.m, arr: testCase.arr)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        // given
        testCase = TestCase(m: 4, arr: [2,2,4,3], result: [1,2])
        // when
        let result = sut.solution(m: testCase.m, arr: testCase.arr)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
