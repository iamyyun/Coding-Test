//
//  체육복Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 체육복Tests: XCTestCase {

    private struct TestCase {
        let n: Int
        let lost: [Int]
        let reverse: [Int]
        let result: Int
    }
    
    private var sut: 체육복!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 체육복()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        testCase = TestCase(n: 5, lost: [2,4], reverse: [1,3,5], result: 5)
        let result = sut.solution(testCase.n, testCase.lost, testCase.reverse)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(n: 5, lost: [2,4], reverse: [3], result: 4)
        let result = sut.solution(testCase.n, testCase.lost, testCase.reverse)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(n: 3, lost: [3], reverse: [1], result: 2)
        let result = sut.solution(testCase.n, testCase.lost, testCase.reverse)
        XCTAssertEqual(result, testCase.result)
    }

}
