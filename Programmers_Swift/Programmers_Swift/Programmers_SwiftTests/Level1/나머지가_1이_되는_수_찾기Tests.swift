//
//  나머지가_1이_되는_수_찾기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/10.
//

import XCTest
@testable import Programmers_Swift

class 나머지가_1이_되는_수_찾기Tests: XCTestCase {

    private struct TestCase {
        let n: Int
        let result: Int
    }
    
    private var sut: 나머지가_1이_되는_수_찾기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 나머지가_1이_되는_수_찾기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(n: 10, result: 3)
        // when
        let result = sut.solution(testCase.n)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(n: 12, result: 11)
        let result = sut.solution(testCase.n)
        XCTAssertEqual(result, testCase.result)
    }

}
