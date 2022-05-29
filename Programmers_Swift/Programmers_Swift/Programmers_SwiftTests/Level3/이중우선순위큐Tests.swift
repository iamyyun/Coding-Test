//
//  이중우선순위큐Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 이중우선순위큐Tests: XCTestCase {

    private struct TestCase {
        let operations: [String]
        let result: [Int]
    }
    
    private var sut: 이중우선순위큐!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 이중우선순위큐()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(operations: ["I 16","D 1"], result: [0,0])
        // when
        let result = sut.solution(testCase.operations)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(operations: ["I 7","I 5","I -5","D -1"], result: [7,5])
        let result = sut.solution(testCase.operations)
        XCTAssertEqual(result, testCase.result)
    }

}
