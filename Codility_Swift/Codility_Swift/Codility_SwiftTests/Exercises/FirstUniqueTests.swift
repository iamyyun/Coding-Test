//
//  FirstUniqueTests.swift
//  Codility_SwiftTests
//
//  Created by Yunju Yang on 2022/07/06.
//

import XCTest
@testable import Codility_Swift

class FirstUniqueTests: XCTestCase {

    private struct TestCase {
        let A: [Int]
        let result: Int
    }
    
    private var sut: FirstUnique!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = FirstUnique()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(A: [4,10,5,4,2,10], result: 5)
        // when
        let result = sut.solution(A: testCase.A)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(A: [1,4,3,3,1,2], result: 4)
        // when
        let result = sut.solution(A: testCase.A)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        // given
        testCase = TestCase(A: [6,4,4,6], result: -1)
        // when
        let result = sut.solution(A: testCase.A)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
