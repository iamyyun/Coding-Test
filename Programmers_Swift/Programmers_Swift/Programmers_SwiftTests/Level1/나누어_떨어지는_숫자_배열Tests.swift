//
//  나누어_떨어지는_숫자_배열Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 나누어_떨어지는_숫자_배열Tests: XCTestCase {

    private struct TestCase {
        let arr: [Int]
        let divisor: Int
        let result: [Int]
    }
    
    private var sut: 나누어_떨어지는_숫자_배열!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 나누어_떨어지는_숫자_배열()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        testCase = TestCase(arr: [5,9,7,10], divisor: 5, result: [5,10])
        let result = sut.solution(testCase.arr, testCase.divisor)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(arr: [2,36,1,3], divisor: 1, result: [1,2,3,36])
        let result = sut.solution(testCase.arr, testCase.divisor)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(arr: [3,2,6], divisor: 10, result: [-1])
        let result = sut.solution(testCase.arr, testCase.divisor)
        XCTAssertEqual(result, testCase.result)
    }

}
