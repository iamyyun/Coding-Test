//
//  TwoD_Array_DSTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/07/03.
//

import XCTest
@testable import HackerRank_Swift

class TwoD_Array_DSTests: XCTestCase {

    private struct TestCase {
        let arr: [[Int]]
        let result: Int
    }
    
    private var sut: TwoD_Array_DS!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = TwoD_Array_DS()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(arr: [[-9,-9,-9,1,1,1],[0,-9,0,4,3,2],[-9,-9,-9,1,2,3],[0,0,8,6,6,0],[0,0,0,-2,0,0],[0,0,1,2,4,0]], result: 28)
        // when
        let result = sut.solution(arr: testCase.arr)
        // then
        XCTAssertEqual(result, testCase.result)
    }

    func testCase2() {
        // given
        testCase = TestCase(arr: [[1,1,1,0,0,0],[0,1,0,0,0,0],[1,1,1,0,0,0],[0,0,2,4,4,0],[0,0,0,2,0,0],[0,0,1,2,4,0]], result: 19)
        // when
        let result = sut.solution(arr: testCase.arr)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
