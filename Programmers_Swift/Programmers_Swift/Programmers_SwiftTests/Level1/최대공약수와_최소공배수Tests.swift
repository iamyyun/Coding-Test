//
//  최대공약수와_최소공배수Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/13.
//

import XCTest
@testable import Programmers_Swift

class 최대공약수와_최소공배수Tests: XCTestCase {

    private struct TestCase {
        let n: Int
        let m: Int
        let result: [Int]
    }
    
    private var sut: 최대공약수와_최소공배수!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 최대공약수와_최소공배수()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(n: 3, m: 12, result: [3,12])
        // when
        let result = sut.solution(testCase.n, testCase.m)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(n: 2, m: 5, result: [1,10])
        let result = sut.solution(testCase.n, testCase.m)
        XCTAssertEqual(result, testCase.result)
    }

}
