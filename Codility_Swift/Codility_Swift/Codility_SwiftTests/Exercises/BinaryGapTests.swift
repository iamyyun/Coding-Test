//
//  BinaryGapTests.swift
//  Codility_SwiftTests
//
//  Created by Yunju Yang on 2022/07/06.
//

import XCTest
@testable import Codility_Swift

class BinaryGapTests: XCTestCase {

    private struct TestCase {
        let N: Int
        let result: Int
    }
    
    private var sut: BinaryGap!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = BinaryGap()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(N: 9, result: 2)
        // when
        let result = sut.solution(N: testCase.N)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(N: 529, result: 4)
        // when
        let result = sut.solution(N: testCase.N)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        // given
        testCase = TestCase(N: 20, result: 1)
        // when
        let result = sut.solution(N: testCase.N)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase4() {
        // given
        testCase = TestCase(N: 15, result: 0)
        // when
        let result = sut.solution(N: testCase.N)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase5() {
        // given
        testCase = TestCase(N: 32, result: 0)
        // when
        let result = sut.solution(N: testCase.N)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase6() {
        // given
        testCase = TestCase(N: 1041, result: 5)
        // when
        let result = sut.solution(N: testCase.N)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
