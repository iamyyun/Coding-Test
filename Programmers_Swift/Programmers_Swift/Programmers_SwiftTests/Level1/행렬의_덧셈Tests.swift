//
//  행렬의_덧셈Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 행렬의_덧셈Tests: XCTestCase {

    private struct TestCase {
        let arr1: [[Int]]
        let arr2: [[Int]]
        let result: [[Int]]
    }
    
    private var sut: 행렬의_덧셈!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 행렬의_덧셈()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(arr1: [[1,2],[2,3]], arr2: [[3,4],[5,6]], result: [[4,6],[7,9]])
        // when
        let result = sut.solution(testCase.arr1, testCase.arr2)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(arr1: [[1],[2]], arr2: [[3],[4]], result: [[4],[6]])
        let result = sut.solution(testCase.arr1, testCase.arr2)
        XCTAssertEqual(result, testCase.result)
    }

}
