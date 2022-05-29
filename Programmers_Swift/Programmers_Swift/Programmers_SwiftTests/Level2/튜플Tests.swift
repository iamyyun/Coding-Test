//
//  튜플Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 튜플Tests: XCTestCase {

    private struct TestCase {
        let s: String
        let result: [Int]
    }
    
    private var sut: 튜플!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 튜플()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(s: "{{2},{2,1},{2,1,3},{2,1,3,4}}", result: [2,1,3,4])
        // when
        let result = sut.solution(testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(s: "{{1,2,3},{2,1},{1,2,4,3},{2}}", result: [2,1,3,4])
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(s: "{{20,111},{111}}", result: [111,20])
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase4() {
        testCase = TestCase(s: "{{123}}", result: [123])
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase5() {
        testCase = TestCase(s: "{{4,2,3},{3},{2,3,4,1},{2,3}}", result: [3,2,4,1])
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }

}
