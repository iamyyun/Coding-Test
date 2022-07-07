//
//  Breaking_the_RecordsTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/07/04.
//

import XCTest
@testable import HackerRank_Swift

class Breaking_the_RecordsTests: XCTestCase {

    private struct TestCase {
        let scores: [Int]
        let result: [Int]
    }
    
    private var sut: Breaking_the_Records!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Breaking_the_Records()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(scores: [12,24,10,24], result: [1,1])
        // when
        let result = sut.solution(scores: testCase.scores)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(scores: [10,5,20,20,4,5,2,25,1], result: [2,4])
        // when
        let result = sut.solution(scores: testCase.scores)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        // given
        testCase = TestCase(scores: [3,4,21,36,10,28,35,5,24,42], result: [4,0])
        // when
        let result = sut.solution(scores: testCase.scores)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
