//
//  Queue_using_Two_StacksTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/05/29.
//

import XCTest
@testable import HackerRank_Swift

class Queue_using_Two_StacksTests: XCTestCase {

    private struct TestCase {
        let operations: [String]
        let result: [Int]
    }
    
    private var sut: Queue_using_Two_Stacks!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Queue_using_Two_Stacks()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(operations: ["1 42","2","1 14","3","1 28","3","1 60","1 78","2","2"], result: [14,14])
        // when
        let result = sut.solution(operations: testCase.operations)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
