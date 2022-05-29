//
//  Birthday_Cake_CandlesTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/05/25.
//

import XCTest
@testable import HackerRank_Swift

class Birthday_Cake_CandlesTests: XCTestCase {

    private struct TestCase {
        let arr: [Int]
        let result: Int
    }
    
    private var sut: Birthday_Cake_Candles!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Birthday_Cake_Candles()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(arr: [3,2,1,3], result: 2)
        // when
        let result = sut.solution(candles: testCase.arr)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
