//
//  N개의_최소공배수Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class N개의_최소공배수Tests: XCTestCase {

    private struct TestCase {
        let arr: [Int]
        let result: Int
    }
    
    private var sut: N개의_최소공배수!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = N개의_최소공배수()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(arr: [2,6,8,14], result: 168)
        // when
        let result = sut.solution(testCase.arr)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(arr: [1,2,3], result: 6)
        let result = sut.solution(testCase.arr)
        XCTAssertEqual(result, testCase.result)
    }

}
