//
//  시저_암호Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/09.
//

import XCTest
@testable import Programmers_Swift

class 시저_암호Tests: XCTestCase {

    private struct TestCase {
        let s: String
        let n: Int
        let result: String
    }
    
    private var sut: 시저_암호!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 시저_암호()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(s: "AB", n: 1, result: "BC")
        // when
        let result = sut.solution(testCase.s, testCase.n)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(s: "z", n: 1, result: "a")
        let result = sut.solution(testCase.s, testCase.n)
        XCTAssertEqual(result, testCase.result)
    }

    func testCase3() {
        testCase = TestCase(s: "a B z", n: 4, result: "e F d")
        let result = sut.solution(testCase.s, testCase.n)
        XCTAssertEqual(result, testCase.result)
    }
                                  
}
