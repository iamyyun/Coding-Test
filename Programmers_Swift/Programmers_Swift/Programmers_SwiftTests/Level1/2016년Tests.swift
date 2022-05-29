//
//  2016년Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class year2016Tests: XCTestCase {

    private struct TestCase {
        let a: Int
        let b: Int
        let result: String
    }
    
    private var sut: year2016!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = year2016()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        testCase = TestCase(a: 5, b: 24, result: "TUE")
        let result = sut.solution(testCase.a, testCase.b)
        XCTAssertEqual(result, testCase.result)
    }

}
