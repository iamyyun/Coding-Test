//
//  Array_DSTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/05/29.
//

import XCTest
@testable import HackerRank_Swift

class Array_DSTests: XCTestCase {

    private struct TestCase {
        let a: [Int]
        let result: [Int]
    }
    
    private var sut: Array_DS!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Array_DS()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(a: [1,4,3,2], result: [2,3,4,1])
        // when
        let result = sut.solution(a: testCase.a)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
