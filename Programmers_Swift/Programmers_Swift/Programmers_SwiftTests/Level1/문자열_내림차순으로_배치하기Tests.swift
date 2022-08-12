//
//  문자열_내림차순으로_배치하기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/09.
//

import XCTest
@testable import Programmers_Swift

class 문자열_내림차순으로_배치하기Tests: XCTestCase {

    private struct TestCase {
        let s: String
        let result: String
    }
    
    private var sut: 문자열_내림차순으로_배치하기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 문자열_내림차순으로_배치하기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(s: "Zbcdefg", result: "gfedcbZ")
        // when
        let result = sut.solution(testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
