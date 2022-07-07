//
//  WaiterTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/07/05.
//

import XCTest
@testable import HackerRank_Swift

class WaiterTests: XCTestCase {

    private struct TestCase {
        let number: [Int]
        let q: Int
        let result: [Int]
    }
    
    private var sut: Waiter!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Waiter()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(number: [2,3,4,5,6,7], q: 3, result: [2,4,6,3,5,7])
        // when
        let result = sut.solution(number: testCase.number, q: testCase.q)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(number: [3,4,7,6,5], q: 1, result: [4,6,3,7,5])
        // when
        let result = sut.solution(number: testCase.number, q: testCase.q)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        // given
    testCase = TestCase(number: [3,3,4,4,9], q: 2, result: [4,4,9,3,3])
        // when
            let result = sut.solution(number: testCase.number, q: testCase.q)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
