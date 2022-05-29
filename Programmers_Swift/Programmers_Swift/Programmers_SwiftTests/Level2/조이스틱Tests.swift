//
//  조이스틱Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 조이스틱Tests: XCTestCase {

    private struct TestCase {
        let name: String
        let result: Int
    }
    
    private var sut: 조이스틱!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 조이스틱()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(name: "JEROEN", result: 56)
        // when
        let result = sut.solution(testCase.name)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(name: "JAN", result: 23)
        let result = sut.solution(testCase.name)
        XCTAssertEqual(result, testCase.result)
    }

}
