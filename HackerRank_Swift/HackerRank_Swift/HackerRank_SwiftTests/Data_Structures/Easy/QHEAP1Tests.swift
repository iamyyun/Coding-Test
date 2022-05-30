//
//  QHEAP1Tests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/05/29.
//

import XCTest
@testable import HackerRank_Swift

class QHEAP1Tests: XCTestCase {

    private struct TestCase {
        let operations: [String]
        let result: [Int]
    }
    
    private var sut: QHEAP1!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = QHEAP1()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(operations: ["1 4","1 9","3","2 4","3"], result: [4,9])
        // when
        let result = sut.solution(operations: testCase.operations)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
