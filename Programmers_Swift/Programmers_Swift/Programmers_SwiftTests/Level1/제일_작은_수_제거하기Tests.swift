//
//  제일_작은_수_제거하기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/09.
//

import XCTest
@testable import Programmers_Swift

class 제일_작은_수_제거하기Tests: XCTestCase {

    private struct TestCase {
        let arr: [Int]
        let result: [Int]
    }
    
    private var sut: 제일_작은_수_제거하기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 제일_작은_수_제거하기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(arr: [4,3,2,1], result: [4,3,2])
        // when
        let result = sut.solution(testCase.arr)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(arr: [10], result: [-1])
        let result = sut.solution(testCase.arr)
        XCTAssertEqual(result, testCase.result)
    }

}
