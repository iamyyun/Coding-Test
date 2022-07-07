//
//  Larrys_ArrayTests.swift
//  HackerRank_SwiftTests
//
//  Created by Yunju Yang on 2022/07/04.
//

import XCTest
@testable import HackerRank_Swift

class Larrys_ArrayTests: XCTestCase {

    private struct TestCase {
        let A: [Int]
        let result: String
    }
    
    private var sut: Larrys_Array!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Larrys_Array()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(A: [1,6,5,2,4,3], result: "YES")
        // when
        let result = sut.solution(A: testCase.A)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        // given
        testCase = TestCase(A: [3,1,2], result: "YES")
        // when
        let result = sut.solution(A: testCase.A)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        // given
        testCase = TestCase(A: [1,3,4,2], result: "YES")
        // when
        let result = sut.solution(A: testCase.A)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase4() {
        // given
        testCase = TestCase(A: [1,2,3,5,4], result: "NO")
        // when
        let result = sut.solution(A: testCase.A)
        // then
        XCTAssertEqual(result, testCase.result)
    }
}
