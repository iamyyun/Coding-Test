//
//  정수_내림차순으로_배치하기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 정수_내림차순으로_배치하기Tests: XCTestCase {

    private struct TestCase {
        let n: Int64
        let result: Int64
    }
    
    private var sut: 정수_내림차순으로_배치하기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 정수_내림차순으로_배치하기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(n: 118372, result: 873211)
        // when
        let result = sut.solution(testCase.n)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
