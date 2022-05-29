//
//  Compare_the_TripletsTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/05/25.
//

import XCTest
@testable import HackerRank_Swift

class Compare_the_TripletsTests: XCTestCase {

    private struct TestCase {
        let a: [Int]
        let b: [Int]
        let result: [Int]
    }
    
    private var sut: Compare_the_Triplets!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Compare_the_Triplets()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(a: [5,6,7], b: [3,6,10], result: [1,1])
        // when
        let result = sut.solution(a: testCase.a, b: testCase.b)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(a: [17,28,30], b: [99,16,8], result: [2,1])
        // when
        let result = sut.solution(a: testCase.a, b: testCase.b)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
