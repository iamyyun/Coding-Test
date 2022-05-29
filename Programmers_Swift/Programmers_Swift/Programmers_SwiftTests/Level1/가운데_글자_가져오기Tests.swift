//
//  가운데_글자_가져오기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 가운데_글자_가져오기Tests: XCTestCase {

    private struct TestCase {
        let s: String
        let result: String
    }
    
    private var sut: 가운데_글자_가져오기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 가운데_글자_가져오기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        testCase = TestCase(s: "abcde", result: "c")
        let result = sut.solution(testCase.s)
        XCTAssertEqual(result, testCase.result)
    }

}
