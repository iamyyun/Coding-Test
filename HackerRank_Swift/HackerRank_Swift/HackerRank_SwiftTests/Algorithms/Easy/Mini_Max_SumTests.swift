//
//  Mini_Max_SumTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/05/25.
//

import XCTest
@testable import HackerRank_Swift

class Mini_Max_SumTests: XCTestCase {

    private struct TestCase {
        let arr: [Int]
        let result: [Int]
    }
    
    private var sut: Mini_Max_Sum!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Mini_Max_Sum()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(arr: [1,3,5,7,9], result: [16,24])
        // when
        let result = sut.solution(arr: testCase.arr)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(arr: [1,2,3,4,5], result: [10,14])
        // when
        let result = sut.solution(arr: testCase.arr)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
