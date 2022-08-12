//
//  자연수_뒤집어_배열로_만들기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/09.
//

import XCTest
@testable import Programmers_Swift

class 자연수_뒤집어_배열로_만들기Tests: XCTestCase {

    private struct TestCase {
        let n: Int64
        let result: [Int]
    }
    
    private var sut: 자연수_뒤집어_배열로_만들기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 자연수_뒤집어_배열로_만들기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(n: 12345, result: [5,4,3,2,1])
        // when
        let result = sut.solution(testCase.n)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
