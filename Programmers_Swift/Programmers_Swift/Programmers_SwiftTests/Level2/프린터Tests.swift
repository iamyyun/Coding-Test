//
//  프린터Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 프린터Tests: XCTestCase {

    private struct TestCase {
        let priorities: [Int]
        let location: Int
        let result: Int
    }
    
    private var sut: 프린터!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 프린터()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(priorities: [2,1,3,2], location: 2, result: 1)
        // when
        let result = sut.solution(testCase.priorities, testCase.location)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(priorities: [1,1,9,1,1,1], location: 0, result: 5)
        let result = sut.solution(testCase.priorities, testCase.location)
        XCTAssertEqual(result, testCase.result)
    }
}
