//
//  약수의_합Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/13.
//

import XCTest
@testable import Programmers_Swift

class 약수의_합Tests: XCTestCase {

    private struct TestCase {
        let n: Int
        let result: Int
    }
    
    private var sut: 약수의_합!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 약수의_합()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(n: 12, result: 28)
        // when
        let result = sut.solution(testCase.n)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(n: 5, result: 6)
        let result = sut.solution(testCase.n)
        XCTAssertEqual(result, testCase.result)
    }

}
