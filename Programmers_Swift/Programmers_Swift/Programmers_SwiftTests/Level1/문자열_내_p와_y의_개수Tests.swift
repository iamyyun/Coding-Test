//
//  문자열_내_p와_y의_개수Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/09.
//

import XCTest
@testable import Programmers_Swift

class 문자열_내_p와_y의_개수Tests: XCTestCase {

    private struct TestCase {
        let s: String
        let result: Bool
    }
    
    private var sut: 문자열_내_p와_y의_개수!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 문자열_내_p와_y의_개수()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(s: "pPoooyY", result: true)
        // when
        let result = sut.solution(testCase.s)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(s: "Pyy", result: false)
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }

}
