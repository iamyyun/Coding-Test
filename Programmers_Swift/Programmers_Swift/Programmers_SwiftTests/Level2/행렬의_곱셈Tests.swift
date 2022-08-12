//
//  행렬의_곱셈Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/08.
//

import XCTest
@testable import Programmers_Swift

class 행렬의_곱셈Tests: XCTestCase {

    private struct TestCase {
        let arr1: [[Int]]
        let arr2: [[Int]]
        let result: [[Int]]
    }
    
    private var sut: 행렬의_곱셈!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 행렬의_곱셈()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(arr1: [[1,4],[3,2],[4,1]], arr2: [[3,3],[3,3],[3,3]], result: [[15,15],[15,15],[15,15]])
        // when
        let result = sut.solution(testCase.arr1, testCase.arr2)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(arr1: [[2,3,2],[4,2,4],[3,1,4]], arr2: [[5,4,3],[2,4,1],[3,1,1]], result: [[22,22,11],[36,28,18],[29,20,14]])
        let result = sut.solution(testCase.arr1, testCase.arr2)
        XCTAssertEqual(result, testCase.result)
    }

}
