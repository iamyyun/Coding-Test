//
//  핸드폰_번호_가리기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/08/08.
//

import XCTest
@testable import Programmers_Swift

class 핸드폰_번호_가리기Tests: XCTestCase {

    private struct TestCase {
        let phone_number: String
        let result: String
    }
    
    private var sut: 핸드폰_번호_가리기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 핸드폰_번호_가리기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(phone_number: "01033334444", result: "*******4444")
        // when
        let result = sut.solution(testCase.phone_number)
        // then
        XCTAssertEqual(result, testCase.result)
    }
    
    func testCase2() {
        testCase = TestCase(phone_number: "027778888", result: "*****8888")
        let result = sut.solution(testCase.phone_number)
        XCTAssertEqual(result, testCase.result)
    }


}
