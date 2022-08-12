//
//  문자열_내_마음대로_정렬하기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/08.
//

import XCTest
@testable import Programmers_Swift

class 문자열_내_마음대로_정렬하기Tests: XCTestCase {

    private struct TestCase {
        let strings: [String]
        let n: Int
        let result: [String]
    }
    
    private var sut: 문자열_내_마음대로_정렬하기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 문자열_내_마음대로_정렬하기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(strings: ["sun", "bed", "car"], n: 1, result: ["car", "bed", "sun"])
        // when
        let result = sut.solution(testCase.strings, testCase.n)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(strings: ["abce","abcd","cdx"], n: 2, result: ["abcd","abce","cdx"])
        let result = sut.solution(testCase.strings, testCase.n)
        XCTAssertEqual(result, testCase.result)
    }

}
