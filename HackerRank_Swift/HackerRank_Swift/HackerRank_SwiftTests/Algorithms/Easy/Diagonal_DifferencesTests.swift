//
//  Diagonal_DifferencesTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/05/25.
//

import XCTest
@testable import HackerRank_Swift

class Diagonal_DifferencesTests: XCTestCase {

    private struct TestCase {
        let arr: [[Int]]
        let result: Int
    }
    
    private var sut: Diagonal_Difference!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Diagonal_Difference()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(arr: [[11,2,4],[4,5,6],[10,8,-12]], result: 15)
        // when
        let result = sut.solution(arr: testCase.arr)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
