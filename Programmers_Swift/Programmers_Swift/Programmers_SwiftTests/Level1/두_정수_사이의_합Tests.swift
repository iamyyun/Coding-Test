//
//  두_정수_사이의_합Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 두_정수_사이의_합Tests: XCTestCase {

    private struct TestCase {
        let a: Int
        let b: Int
        let result: Int64
    }
    
    private var sut: 두_정수_사이의_합!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 두_정수_사이의_합()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        testCase = TestCase(a: 3, b: 5, result: 12)
        let result = sut.solution(testCase.a, testCase.b)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(a: 3, b: 3, result: 3)
        let result = sut.solution(testCase.a, testCase.b)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(a: 5, b: 3, result: 12)
        let result = sut.solution(testCase.a, testCase.b)
        XCTAssertEqual(result, testCase.result)
    }

}
