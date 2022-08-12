//
//  실패율Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/10.
//

import XCTest
@testable import Programmers_Swift

class 실패율Tests: XCTestCase {

    private struct TestCase {
        let N: Int
        let stages: [Int]
        let result: [Int]
    }
    
    private var sut: 실패율!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 실패율()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(N: 5, stages: [2,1,2,6,2,4,3,3], result: [3,4,2,1,5])
        // when
        let result = sut.solution(testCase.N, testCase.stages)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(N: 4, stages: [4,4,4,4,4], result: [4,1,2,3])
        let result = sut.solution(testCase.N, testCase.stages)
        XCTAssertEqual(result, testCase.result)
    }

}
