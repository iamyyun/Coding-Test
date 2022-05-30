//
//  Maximum_ElementTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/05/29.
//

import XCTest
@testable import HackerRank_Swift

class Maximum_ElementTests: XCTestCase {

    private struct TestCase {
        let operations: [String]
        let result: [Int]
    }
    
    private var sut: Maximum_Element!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Maximum_Element()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(operations: ["1 83","3","2","1 76"], result: [83])
        // when
        let result = sut.solution(operations: testCase.operations)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(operations: ["1 97","2","1 20","2","1 26","1 20","2","3","1 91","3"], result: [26,91])
        // when
        let result = sut.solution(operations: testCase.operations)
        // then
        XCTAssertEqual(result, testCase.result)
    }
}
