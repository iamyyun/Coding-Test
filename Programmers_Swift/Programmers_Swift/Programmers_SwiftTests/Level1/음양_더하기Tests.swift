//
//  음양_더하기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/09.
//

import XCTest
@testable import Programmers_Swift

class 음양_더하기Tests: XCTestCase {

    private struct TestCase {
        let absolutes: [Int]
        let signs: [Bool]
        let result: Int
    }
    
    private var sut: 음양_더하기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 음양_더하기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(absolutes: [4,7,12], signs: [true,false,true], result: 9)
        // when
        let result = sut.solution(testCase.absolutes, testCase.signs)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(absolutes: [1,2,3], signs: [false,false,true], result: 0)
        let result = sut.solution(testCase.absolutes, testCase.signs)
        XCTAssertEqual(result, testCase.result)
    }

}
