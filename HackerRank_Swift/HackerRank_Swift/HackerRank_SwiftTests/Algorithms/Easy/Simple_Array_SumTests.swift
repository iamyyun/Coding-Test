//
//  Simple_Array_SumTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/05/25.
//

import XCTest
@testable import HackerRank_Swift

class Simple_Array_SumTests: XCTestCase {

    private struct TestCase {
        let ar: [Int]
        let result: Int
    }
    
    private var sut: Simple_Array_Sum!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Simple_Array_Sum()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(ar: [1,2,3,4,5], result: 15)
        // when
        let result = sut.solution(ar: testCase.ar)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
