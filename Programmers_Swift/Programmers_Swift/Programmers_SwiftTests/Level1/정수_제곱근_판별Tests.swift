//
//  정수_제곱근_판별Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/09.
//

import XCTest
@testable import Programmers_Swift

class 정수_제곱근_판별Tests: XCTestCase {

    private struct TestCase {
        let n: Int64
        let result: Int64
    }
    
    private var sut: 정수_제곱근_판별!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 정수_제곱근_판별()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(n: 121, result: 144)
        // when
        let result = sut.solution(testCase.n)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(n: 3, result: -1)
        let result = sut.solution(testCase.n)
        XCTAssertEqual(result, testCase.result)
    }

}
