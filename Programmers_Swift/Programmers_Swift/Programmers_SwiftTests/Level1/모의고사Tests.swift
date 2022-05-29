//
//  모의고사Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 모의고사Tests: XCTestCase {

    private struct TestCase {
        let answers: [Int]
        let result: [Int]
    }
    
    private var sut: 모의고사!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 모의고사()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        testCase = TestCase(answers: [1,2,3,4,5], result: [1])
        let result = sut.solution(testCase.answers)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(answers: [1,3,2,4,2], result: [1,2,3])
        let result = sut.solution(testCase.answers)
        XCTAssertEqual(result, testCase.result)
    }

}
