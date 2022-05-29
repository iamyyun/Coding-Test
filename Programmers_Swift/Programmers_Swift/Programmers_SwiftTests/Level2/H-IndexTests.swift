//
//  H-IndexTests.swift
//  Programmers_SwiftTests
//
//  Created by Yunju Yang on 2022/05/18.
//

import XCTest
@testable import Programmers_Swift

class H_IndexTests: XCTestCase {

    private struct TestCase {
        let citations: [Int]
        let result: Int
    }
    
    private var sut: HIndex!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = HIndex()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // given
        testCase = TestCase(citations: [3,0,6,1,5], result: 3)
        // when
        let result = sut.solution(testCase.citations)
        // then
        XCTAssertEqual(result, testCase.result)
    }

}
