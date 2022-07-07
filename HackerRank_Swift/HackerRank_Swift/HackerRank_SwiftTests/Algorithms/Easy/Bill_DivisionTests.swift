//
//  Bill_DivisionTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/07/04.
//

import XCTest
@testable import HackerRank_Swift

class Bill_DivisionTests: XCTestCase {

    private struct TestCase {
        let bill: [Int]
        let k: Int
        let b: Int
        let result: String
    }
    
    private var sut: Bill_Division!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Bill_Division()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(bill: [2,4,6], k: 2, b: 6, result: "3")
        // when
        let result = sut.solution(bill: testCase.bill, k: testCase.k, b: testCase.b)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(bill: [3,10,2,9], k: 1, b: 12, result: "5")
        // when
        let result = sut.solution(bill: testCase.bill, k: testCase.k, b: testCase.b)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        // given
        testCase = TestCase(bill: [3,10,2,9], k: 1, b: 7, result: "Bon Appetit")
        // when
        let result = sut.solution(bill: testCase.bill, k: testCase.k, b: testCase.b)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
