//
//  내적Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/10.
//

import XCTest
@testable import Programmers_Swift

class 내적Tests: XCTestCase {

    private struct TestCase {
        let a: [Int]
        let b: [Int]
        let result: Int
    }
    
    private var sut: 내적!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 내적()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(a: [1,2,3,4], b: [-3,-1,0,2], result: 3)
        // when
        let result = sut.solution(testCase.a, testCase.b)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(a: [-1,0,1], b: [1,0,-1], result: -2)
        let result = sut.solution(testCase.a, testCase.b)
        XCTAssertEqual(result, testCase.result)
    }

}
