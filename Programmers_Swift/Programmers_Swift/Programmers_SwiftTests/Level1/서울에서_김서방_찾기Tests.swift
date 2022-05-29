//
//  서울에서_김서방_찾기Tests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class 서울에서_김서방_찾기Tests: XCTestCase {

    private struct TestCase {
        let seoul: [String]
        let result: String
    }
    
    private var sut: 서울에서_김서방_찾기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = 서울에서_김서방_찾기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(seoul: ["Jane","Kim"], result: "김서방은 1에 있다")
        // when
        let result = sut.solution(testCase.seoul)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
