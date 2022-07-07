//
//  Extra_Long_FactorialsTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/07/04.
//

import XCTest
@testable import HackerRank_Swift

class Extra_Long_FactorialsTests: XCTestCase {

    private struct TestCase {
        let n: Int
        let result: String
    }
    
    private var sut: Extra_Long_Factorials!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Extra_Long_Factorials()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(n: 5, result: "120")
        // when
        let result = sut.solution(n: testCase.n)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(n: 30, result: "265252859812191058636308480000000")
        // when
        let result = sut.solution(n: testCase.n)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        // given
        testCase = TestCase(n: 25, result: "15511210043330985984000000")
        // when
        let result = sut.solution(n: testCase.n)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
