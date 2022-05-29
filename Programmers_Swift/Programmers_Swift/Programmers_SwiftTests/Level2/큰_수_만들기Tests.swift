//
//  큰_수_만들기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 큰_수_만들기Tests: XCTestCase {

    private struct TestCase {
        let number: String
        let k: Int
        let result: String
    }
    
    private var sut: 큰_수_만들기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 큰_수_만들기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(number: "1924", k: 2, result: "94")
        // when
        let result = sut.solution(testCase.number, testCase.k)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(number: "1231234", k: 3, result: "3234")
        let result = sut.solution(testCase.number, testCase.k)
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase3() {
        testCase = TestCase(number: "4177252841", k: 4, result: "775841")
        let result = sut.solution(testCase.number, testCase.k)
        XCTAssertEqual(result, testCase.result)
    }

}
