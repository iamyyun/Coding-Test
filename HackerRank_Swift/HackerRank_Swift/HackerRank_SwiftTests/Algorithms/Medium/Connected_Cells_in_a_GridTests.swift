//
//  Connected_Cells_in_a_GridTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/05/28.
//

import XCTest
@testable import HackerRank_Swift

class Connected_Cells_in_a_GridTests: XCTestCase {

    private struct TestCase {
        let matrix: [[Int]]
        let result: Int
    }
    
    private var sut: Connected_Cells_in_a_Grid!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Connected_Cells_in_a_Grid()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(matrix: [[1,1,0],[1,0,0],[0,0,1]], result: 3)
        // when
        let result = sut.solution(matrix: testCase.matrix)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(matrix: [[1,1,0,0],[0,1,1,0],[0,0,1,0],[1,0,0,0]], result: 5)
        // when
        let result = sut.solution(matrix: testCase.matrix)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        // given
        testCase = TestCase(matrix: [[0,1,1,1,1],[1,0,0,0,1],[1,1,0,1,0],[0,1,0,1,1],[0,1,1,1,0]], result: 15)
        // when
        let result = sut.solution(matrix: testCase.matrix)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
