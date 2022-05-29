//
//  수박수박수박수박수박수Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 수박수박수박수박수박수Tests: XCTestCase {

    private struct TestCase {
        let n: Int
        let result: String
    }
    
    private var sut: 수박수박수박수박수박수!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 수박수박수박수박수박수()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(n: 3, result: "수박수")
        // when
        let result = sut.solution(testCase.n)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(n: 4, result: "수박수박")
        let result = sut.solution(testCase.n)
        XCTAssertEqual(result, testCase.result)
    }

}
